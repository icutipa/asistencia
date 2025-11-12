from db import obtener_conexion, cerrar_conexion

def listar_semestre():
    conexion = obtener_conexion()
    semestres = []
    if conexion:
        try:
            #cursor = conexion.cursor()
            cursor = conexion.cursor(dictionary=True)
            sql = "SELECT * FROM semestre"
            cursor.execute(sql)
            semestres = cursor.fetchall()
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cerrar_conexion(conexion)
    return semestres

def insertar_semestre(semestre):
    conexion = obtener_conexion()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "INSERT INTO semestre (nombre_semestre) VALUES (%s)"
            cursor.execute(sql, semestre)
            conexion.commit()
            print("Semestre insertado correctamente")
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cerrar_conexion(conexion)

def actualizar_semestre(id_semestre, semestre):
    conexion = obtener_conexion()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "UPDATE semestre SET nombre_semestre=>%s WHERE id_semestre=%s"
            cursor.execute(sql, (semestre, id_semestre))
            conexion.commit()
            if cursor.rowcount > 0:
                print("Registro actualizado con éxito")
            else:
                print("El ID del regitro no existe")
        except Exception as e:
            print(f"Error al actualizar información: {e}")
        finally:
            cerrar_conexion(conexion)

def eliminar_semestre(id_semestre):
    conexion = obtener_conexion()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "DELETE FROM semestre WHERE id_semestre= %s"
            cursor.execute(sql, (id_semestre))
            conexion.commit()
            if cursor.rowcount > 0:
                print("El registro se ha eliminado correctamente")
            else:
                print("El ID del registro no existe")
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cerrar_conexion()

def ver_semestres():
    semestres = listar_semestre()
    print("Lista de semestres:")
    for semestre in semestres:
        print(semestre)

if __name__ == "__main__":
    #insertar_semestre(("2024-I",))
    #insertar_semestre(("2024-II",))
    #insertar_semestre(("2025-I",))
    #insertar_semestre(("2025-II",))
    ver_semestres()