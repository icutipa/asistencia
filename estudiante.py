from db import obtener_conexion, cerrar_conexion

def insertar_estudiante(estudiante):
    conexion = obtener_conexion()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "INSERT INTO estudiante (nombres, apellidos, dni, email, genero, id_programa, id_semestre) VALUES (%s, %s, %s, %s, %s, %s, %s)"
            cursor.execute(sql, estudiante)
            conexion.commit()
            print("Estudiante insertado correctamente")
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cerrar_conexion(conexion)

def actualizar_estudiante(estudiante):
    conexion = obtener_conexion()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = """UPDATE estudiante SET nombres=%s, apellidos=%s, dni=%s, email=%s, genero=%s, id_programa=%s, id_semestre=%s WHERE id_estudiante=%s"""
            cursor.execute(sql, estudiante)
            conexion.commit()
            print("Estudiante actualizado correctamente")
        except Exception as e:
            print(f"Error al actualizar estudiante: {e}")
        finally:
            cerrar_conexion(conexion)

def eliminar_estudiante(id_estudiante):
    conexion = obtener_conexion()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "DELETE FROM estudiante WHERE id_estudiante=%s"
            cursor.execute(sql, (id_estudiante,))
            conexion.commit()
            print("Estudiante eliminado correctamente")
        except Exception as e:
            print(f"Error al eliminar estudiante: {e}")
        finally:
            cerrar_conexion(conexion)

def listar_estudiantes():
    conexion = obtener_conexion()
    estudiantes = []
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "SELECT id_estudiante, nombres, apellidos, dni, email, genero, id_programa, id_semestre FROM estudiante"
            cursor.execute(sql)
            estudiantes = cursor.fetchall()
        except Exception as e:
            print(f"Error al listar estudiantes: {e}")
        finally:
            cerrar_conexion(conexion)
    return estudiantes

def buscar_estudiante_por_dni(dni):
    conexion = obtener_conexion()
    estudiante = None
    if conexion:
        try:
            cursor = conexion.cursor(dictionary=True)
            sql = "SELECT id_estudiante, nombres, apellidos, dni, email, genero, id_programa, id_semestre FROM estudiante  WHERE dni = %s"
            cursor.execute(sql, (dni,))
            estudiante = cursor.fetchone()
        except Exception as e:
            print(f"Error al buscar estudiante por DNI: {e}")
        finally:
            cerrar_conexion(conexion)
    return estudiante

if __name__ == "__main__":
    insertar_estudiante(("Ivan Bryan", "Mantilla Fernandez","70508270", "edi72391@gmail.com", "M", 1, 1))
    # actualizar_estudiante(("Ivan", "Mantilla", "70508270", "ivan.mantilla@gmail.com", "M", 1, 1, 1))
    # eliminar_estudiante(1)
    print("Lista de estudiantes:")
    for estudiante in listar_estudiantes():
        print(estudiante)
    pass

    print("\nBuscando estudiante con DNI 70508270...")
    estudiante = buscar_estudiante_por_dni("70508270")
    if estudiante:
        print("Estudiante encontrado:")
        print(estudiante)
    else:
        print("No se encontró ningún estudiante con ese DNI.")