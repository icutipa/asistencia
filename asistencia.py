from db import conectar_bd, cerrar_conexion

def listar_asistencias():
    conexion = conectar_bd()
    asistencias = []
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "SELECT * FROM asistencia"
            cursor.execute(sql)
            asistencias = cursor.fetchall()
            return asistencias
        except Exception as e:
            print(f"Error al listar asistencias: {e}")
            return []
        finally:
            cerrar_conexion(conexion)
    return asistencias

def insertar_asistencia(asistencia):
    conexion = conectar_bd()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = """INSERT INTO asistencia (fecha, observaciones, id_estudiante) VALUES (%s, %s, %s)"""
            cursor.execute(sql, asistencia)
            conexion.commit()
            print("Asistencia registrada correctamente")
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cerrar_conexion(conexion)

def actualizar_asistencia(asistencia):
    conexion = conectar_bd()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = """UPDATE asistencia SET fecha=%s, observaciones=%s, id_estudiante=%s  WHERE id_asistencia=%s"""
            cursor.execute(sql, asistencia)
            conexion.commit()
            print("Asistencia actualizada correctamente")
        except Exception as e:
            print(f"Error al actualizar asistencia: {e}")
        finally:
            cerrar_conexion(conexion)

def eliminar_asistencia(id_asistencia):
    conexion = conectar_bd()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "DELETE FROM asistencia WHERE id_asistencia=%s"
            cursor.execute(sql, (id_asistencia,))
            conexion.commit()
            print("Asistencia eliminada correctamente")
        except Exception as e:
            print(f"Error al eliminar asistencia: {e}")
        finally:
            cerrar_conexion(conexion)

def ver_asistencias():
    asistencias  = listar_asistencias()
    for asistencia in asistencias:
        print(asistencia)

if __name__ == "__main__":
    #insertar_asistencia(("2025-09-22 08:00:00", "", 2))
    #actualizar_asistencia(("2025-09-20 08:15:00", "Llegó tarde", 1, 1))
    #eliminar_asistencia(1)
    print("Lista de asistencias:")
    ver_asistencias()
