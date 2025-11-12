from datetime import datetime
import os
import time

hoy = datetime.now()
print(hoy)

from programa import ver_programas, insertar_programa
from semestre import ver_semestres, insertar_semestre
from asistencia import ver_asistencias, insertar_asistencia
from estudiante import ver_estudiantes, insertar_estudiante, buscar_estudiante_por_dni

def es_dni_valido(dni):
    return dni.isdigit() and len(dni) == 8

def limpiar_pantalla(pausa=None):
    if isinstance(pausa, (int, float)) and pausa >= 0:
        time.sleep(pausa)
    os.system('cls' if os.name == 'nt' else 'clear')

def main():
    while True:
        print("\nSistema de Gestión de Asistencia")
        print("================================")
        print("1. Insertar Programa")
        print("2. Insertar Semestre")
        print("3. Insertar Estudiante")
        print("4. Insertar Asistencia")
        print("5. Salir")
        opcion = input("\nSeleccione una opción: ")

        if opcion == "1":
            limpiar_pantalla(2)
            print("PROGRAMA DE ESTUDIOS")
            print("====================")
            nombre = input("Nombre del programa: ")
            insertar_programa((nombre,))
            ver_programas()

        elif opcion == "2":
            limpiar_pantalla(2)
            print("SEMESTRE")
            print("========")
            nombre = input("Nombre del semestre: ")
            insertar_semestre((nombre,))
            ver_semestres()

        elif opcion == "3":
            limpiar_pantalla(2)
            print("NUEVO ESTUDIANTE")
            print("================")
            dni = input("DNI: ")
            if es_dni_valido(dni):
                nombres = input("Nombres: ")
                apellidos = input("Apellidos: ")
                email = input("Email: ")
                genero = input("genero (F = Feminino, M = Maculino): ")
                id_programa = input("ID Programa de estudios: ")
                id_semestre = input("ID Semetre: ")
                insertar_estudiante((nombres, apellidos, dni, email, genero, id_programa, id_semestre))
                ver_estudiantes()
            else: 
                print("DNI no válido")
        elif opcion == "4":
            limpiar_pantalla(2)
            print("REGISTRAR ASISTENCIA")
            print("====================")
            dni = input("DNI: ")
            obs = input("Observaciones: ")
            fecha = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
            estudiante = buscar_estudiante_por_dni(dni)
            if estudiante:
                insertar_asistencia((fecha, obs, estudiante["id_estudiante"]))
            else:
                print("No se encontró ningún estudiante con el DNI proporcionado.")
            ver_asistencias()
        elif opcion == "5":
            print("\nSaliendo del sistema...")
            limpiar_pantalla()
            break  
        else:
            print("Opción inválida")

if __name__ == "__main__":
    main()