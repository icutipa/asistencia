import sys
import cv2
import threading
import time
import mysql.connector
from mysql.connector import Error
from datetime import datetime

from pyzbar.pyzbar import decode

from PyQt5.QtWidgets import (
    QApplication, QWidget, QLabel, QListWidget,
    QHBoxLayout, QVBoxLayout, QPushButton, QMessageBox
)
from PyQt5.QtCore import QTimer, Qt
from PyQt5.QtGui import QImage, QPixmap

import socket, uuid

import pandas as pd

def obtener_conexion():
    try:
        return mysql.connector.connect(
            host="localhost",
            database="asistencia",
            user="root",
            password="",
            port=3306
        )
    except Exception as e:
        print(f"Error al conectar BD: {e}")
        return None

def buscar_estudiante_por_dni(dni):
    try:
        connection = obtener_conexion()
        if connection is None:
            return None

        cursor = connection.cursor()
        cursor.execute("SELECT id_estudiante, nombres, apellidos, dni, email, id_programa, id_semestre FROM estudiante WHERE dni = %s", (dni,))
        fila = cursor.fetchone()
        cursor.close()
        connection.close()
        return fila

    except Exception as e:
        print(f"Error en consulta BD: {e}")
        return None

def registrar_asistencia(id_estudiante, observaciones="Asistencia Regsitrado"):
    try:
        conexion = obtener_conexion()
        if conexion is None:
            return False
        cursor = conexion.cursor()
        fecha = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        sql = "INSERT INTO asistencia(fecha,observaciones, id_estudiante) VALUES(%s,%s,%s)"
        cursor.execute(sql, (fecha, observaciones,id_estudiante))
        conexion.commit()
        cursor.close()
        return True
    except Exception as e:
        print(f"Error al registrar asistencia: {e}")
        return False

class HiloBusqueda(threading.Thread):
    def __init__(self, dni, callback):
        super().__init__()
        self.dni = dni
        self.callback = callback
        self.daemon = True

    def run(self):
        estudiante = buscar_estudiante_por_dni(self.dni)
        self.callback(self.dni, estudiante)

class VentanaPrincipal(QWidget):
    def __init__(self):
        super().__init__()
        id = socket.gethostbyname(socket.gethostname())
        sign = ':'.join(f'{(uuid.getnode() >> i) & 0xff:02x}' for i in range(40, -1, -8))
        self.setWindowTitle(f"Sistema de Gestión de Asistencia [{id}] [{sign}]")
        self.resize(1200, 700)

        self.label_hora = QLabel("--/--/----\n--:--:--")
        self.label_hora.setWordWrap(True)
        self.label_hora.setAlignment(Qt.AlignCenter)
        self.label_hora.setStyleSheet("font-size: 40px; font-weight: bold; padding: 8px;")

        self.label_camara = QLabel("Iniciando cámara")
        self.label_camara.setAlignment(Qt.AlignCenter)

        self.label_datos = QLabel("DNI detectado: --------")
        self.label_datos.setAlignment(Qt.AlignCenter)
        self.label_datos.setStyleSheet("font-size: 18px; padding: 8px; background: #f0f0f0")

        self.lista_registro_asistencia = QListWidget()

        layout_derecha = QVBoxLayout()
        layout_derecha.addWidget(self.lista_registro_asistencia)
        self.boton_reporte = QPushButton("Generar Reporte")
        self.boton_reporte.setStyleSheet("font-size: 16px; padding:6px;")
        self.boton_reporte.clicked.connect(self.generar_reporte)
        layout_derecha.addWidget(self.boton_reporte)

        layout_izq = QVBoxLayout()
        layout_izq.addWidget(self.label_hora)
        layout_izq.addWidget(self.label_camara, 5)
        layout_izq.addWidget(self.label_datos, 1)

        layout_principal = QHBoxLayout()
        layout_principal.addLayout(layout_izq, 3)
        layout_principal.addLayout(layout_derecha, 2)

        self.setLayout(layout_principal)

        self.timer_hora = QTimer()
        self.timer_hora.timeout.connect(self.actualizar_fecha_hora)
        self.timer_hora.start(1000)

        self.cam = cv2.VideoCapture(0)
        self.timer_camara = QTimer()
        self.timer_camara.timeout.connect(self.leer_camara)
        self.timer_camara.start(30)

        self.ultimo_dni = None

    def actualizar_fecha_hora(self):
        ahora = datetime.now().strftime("%d/%m/%Y\n%H:%M:%S")
        self.label_hora.setText(ahora)

    def leer_camara(self):
        ret, frame = self.cam.read()
        if not ret:
            return

        frame_rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)

        for qr in decode(frame_rgb):
            dni_encontrado = qr.data.decode("utf-8")
            if dni_encontrado != self.ultimo_dni:
                self.ultimo_dni = dni_encontrado
                self.label_datos.setText(f"Buscando...\nDNI: {dni_encontrado}")
                HiloBusqueda(dni_encontrado, self.registrar).start()

        h, w, ch = frame_rgb.shape
        bytes_linea = ch * w
        imagen = QImage(frame_rgb.data, w, h, bytes_linea, QImage.Format_RGB888)
        self.label_camara.setPixmap(QPixmap.fromImage(imagen))

    def registrar(self, dni, estudiante):
        hora = datetime.now().strftime('%H:%M:%S')
        if estudiante:
            id_estudiante, nombres, apellidos, dni, email, programa, semestre = estudiante
            self.label_datos.setText(f"{hora}\nDNI: {dni}\n{nombres} {apellidos}\nPrograma: {programa} | Semestre: {semestre}")
            mensaje = f"{hora} - {dni} - {nombres} {apellidos}"
        else:
            self.label_datos.setText(f"DNI: {dni}\nNO REGISTRADO EN LA BD")
            mensaje = f"{hora} - {dni} - NO REGISTRADO"

        self.lista_registro_asistencia.insertItem(0, mensaje)
        self.lista_registro_asistencia.setCurrentRow(0)

    def generar_reporte(self):
        try:
            conexion = obtener_conexion()
            if conexion is None:
                QMessageBox.warning(self, "Error", "No se pudo conectar a la base de datos")
                return
            cursor = conexion.cursor()
            sql = "select id_asistencia, fecha, observaciones, id_estudiante from asistencia;"
            cursor.execute(sql)
            filas = cursor.fetchall()
            conexion.close()
            if not filas:
                QMessageBox.information(self, "Reporte", "No hay registros de asistencia para reportar")
                return
            df = pd.DataFrame(filas,columns=["ID","Fecha", "Observaciones","Id Estudiante"])
            nombre_archivo = f"Reporte_Asistencia_{datetime.now().strftime("%Y%m%d_%H%M%S")}.xlsx"
            df.to_excel(nombre_archivo,index=False)
            QMessageBox.information(self,"Reporte Generado",f"Reporte generado correctamente:\n{nombre_archivo}")
        except Exception as e:
            QMessageBox.critical(self, "Error", f"No se pudo generar el reporte\n{e}")

    def closeEvent(self, event):
        try:
            self.cam.release()
        except:
            pass
        event.accept()

if __name__ == "__main__":
    print("ID:", socket.gethostbyname(socket.gethostname()))
    print("sign:", ':'.join(f'{(uuid.getnode() >> i) & 0xff:02x}' for i in range(40, -1, -8)))

    app = QApplication(sys.argv)
    ventana = VentanaPrincipal()
    ventana.show()
    sys.exit(app.exec_())