from datetime import datetime
import os
import time

hoy = datetime.now()
print(hoy)

from programa import listar_programa, insertar_programa
from semestre import listar_semestre, insertar_semestre
from asistencia import listar_asistencias, insertar_asistencia
from estudiante import listar_estudiantes, insertar_estudiante

def es_dni_valido(dni):
    """Verifica que el DNI tenga exactamente 8 dígitos numéricos."""
    return dni.isdigit() and len(dni) == 8

def limpiar_pantalla():
    #time.sleep(2)
    os.system('cls' if os.name == 'nt' else 'clear')

def main():
    while True:
        print("\n\nSistema de Gestión de Asistencia")
        print("1. Insertar Programa")
        print("2. Insertar Semestre")
        print("3. Insertar Estudiante")
        print("4. Insertar Asistencia")
        print("5. Salir")
        opcion = input("\nSeleccione una opción: ")

        if opcion == "1":
            limpiar_pantalla()
            nombre = input("Nombre del programa: ")
            insertar_programa((nombre,))

        elif opcion == "2":
            limpiar_pantalla()
            nombre = input("Nombre del semestre: ")
            insertar_semestre((nombre,))

        elif opcion == "3":
            limpiar_pantalla()
            dni = input("DNI: ")
            if es_dni_valido(dni):
                nombres = input("Nombres: ")
                apellidos = input("Apellidos: ")
                email = input("Email: ")
                genero = input("genero (F = Feminino, M = Maculino): ")
                id_programa = input("ID Programa de estudios: ")
                id_semestre = input("ID Semetre: ")
                insertar_estudiante((nombres, apellidos, dni, email, genero, id_programa, id_semestre))
            else: 
                print("DNI no válido")
        elif opcion == "4":
            limpiar_pantalla()
            dni = input("DNI: ")
            fecha = input("Fecha (YYYY-MM-DD HH:MM:SS): ")
            obs = input("Observaciones: ")
            id_e = int(input("ID Estudiante: "))
            #insertar_asistencia((id_a, fecha, obs, id_e))
        elif opcion == "5":
            print("\nSaliendo del sistema...")
            break  
        else:
            print("Opción inválida")

if __name__ == "__main__":
    main()