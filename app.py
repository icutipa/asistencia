from datetime import datetime
import os
import time
from numbers import Real

hoy = datetime.now()
print(hoy)

from programa import listar_programa, insertar_programa
from semestre import listar_semestre, insertar_semestre
from asistencia import listar_asistencias, insertar_asistencia
from estudiante import listar_estudiantes, insertar_estudiante

def es_dni_valido(dni):
    """Verifica que el DNI tenga exactamente 8 dígitos numéricos."""
    return dni.isdigit() and len(dni) == 8

def limpiar_pantalla(pausa=None):
    if pausa is None:
        pass
    elif isinstance(pausa, Real) and pausa >= 0:
        time.sleep(pausa)
    else:
        raise ValueError("pausa debe ser None o un número real no negativo")
    os.system('cls' if os.name == 'nt' else 'clear')

def main():
    while True:
        limpiar_pantalla()
        print("Sistema de Gestión de Asistencia")
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
            listar_programa()

        elif opcion == "2":
            limpiar_pantalla(2)
            print("SEMESTRE")
            print("========")
            nombre = input("Nombre del semestre: ")
            insertar_semestre((nombre,))
            listar_semestre()

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
                listar_estudiantes()
            else: 
                print("DNI no válido")
        elif opcion == "4":
            limpiar_pantalla(2)
            print("REGISTRAR ASISTENCIA")
            print("====================")
            dni = input("DNI: ")
            fecha = input("Fecha (YYYY-MM-DD HH:MM:SS): ")
            obs = input("Observaciones: ")
            id_e = int(input("ID Estudiante: "))
            #insertar_asistencia((fecha, obs, id_e))
            listar_asistencias()
        elif opcion == "5":
            print("\nSaliendo del sistema...")
            limpiar_pantalla()
            break  
        else:
            print("Opción inválida")

if __name__ == "__main__":
    main()