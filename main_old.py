import sys
import cv2
from pyzbar.pyzbar import decode
from datetime import datetime

from PyQt5.QtWidgets import (
    QApplication, QWidget, QLabel, QListWidget,
    QHBoxLayout, QVBoxLayout
)
from PyQt5.QtCore import QTimer, Qt
from PyQt5.QtGui import QImage, QPixmap

import socket, uuid

class VentanaPrincipal(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowTitle(f"Sistema de Gestión de Asistencia")
        self.resize(1200, 700)

        self.label_hora = QLabel("--/--/---- --:--:--")
        self.label_hora.setWordWrap(True)
        self.label_hora.setAlignment(Qt.AlignCenter)
        self.label_hora.setStyleSheet("font-size: 40px; font-weight: bold; padding: 8px;")

        self.label_camara = QLabel("Iniciando cámara")
        self.label_camara.setAlignment(Qt.AlignCenter)

        self.label_datos = QLabel("DNI detectado: --------")
        self.label_datos.setAlignment(Qt.AlignCenter)
        self.label_datos.setStyleSheet("font-size: 18px; padding: 8px; background: #f0f0f0")

        self.lista_registro_asistencia = QListWidget()

        layout_izquierdo = QVBoxLayout()
        layout_izquierdo.addWidget(self.label_hora)
        layout_izquierdo.addWidget(self.label_camara, 5)
        layout_izquierdo.addWidget(self.label_datos, 1)

        layout_principal = QHBoxLayout()
        layout_principal.addLayout(layout_izquierdo, 3)
        layout_principal.addWidget(self.lista_registro_asistencia, 2)
        
        self.setLayout(layout_principal)
        
        #Actualizar Fecha y Hora
        self.timer_hora = QTimer()
        self.timer_hora.timeout.connect(self.actualizar_fecha_hora)
        self.timer_hora.start(1000)

        #Iniciar(Ejecutar) Cámara
        self.cam = cv2.VideoCapture(0)
        self.timer = QTimer()
        self.timer.timeout.connect(self.leer_camara)
        self.timer.start(30)

        self.ultimo_dni = None

    def actualizar_fecha_hora(self):
        ahora = datetime.now().strftime("%d/%m/%Y %H:%M:%S")
        self.label_hora.setText(ahora)

    def leer_camara(self):
        ret, frame = self.cam.read()
        if not ret:
            return
        
        frame_rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        dni_encontrado = None
        for qr in decode(frame_rgb):
            dni_encontrado = qr.data.decode("utf-8")
            if dni_encontrado != self.ultimo_dni:
                self.ultimo_dni = dni_encontrado
                self.registrar(dni_encontrado)

        h, w, ch = frame_rgb.shape
        bytes_linea = ch*w

        imagen = QImage(frame_rgb.data, w, h, bytes_linea, QImage.Format_RGB888)
        self.label_camara.setPixmap(QPixmap.fromImage(imagen))

    def registrar(self, dni):
        self.label_datos.setText(f"DNI detectado: {dni}")
        self.lista_registro_asistencia.insertItem(0, f"{datetime.now().strftime('%H:%M:%S')} - {dni}")
        self.lista_registro_asistencia.setCurrentRow(0)

if __name__ == "__main__":

    print("ID:", socket.gethostbyname(socket.gethostname()))
    print("sign:", ':'.join(f'{(uuid.getnode()>>i)&0xff:02x}' for i in range(40,-1,-8)))

    app = QApplication(sys.argv)
    ventana = VentanaPrincipal()
    ventana.show()
    sys.exit(app.exec_())

