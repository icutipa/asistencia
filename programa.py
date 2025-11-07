from db import obtener_conexion, cerrar_conexion

def listar_programa():
    conexion = obtener_conexion()
    programas = []
    if conexion:
        try:
            #cursor = conexion.cursor()
            cursor = conexion.cursor(dictionary=True)
            sql = "SELECT * FROM programa"
            cursor.execute(sql)
            programas = cursor.fetchall()
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cerrar_conexion(conexion)
    return programas

def insertar_programa(programa):
    conexion = obtener_conexion()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "INSERT INTO programa (nombre_programa) VALUES (%s)"
            cursor.execute(sql, programa)
            conexion.commit()
            print("programa insertado correctamente")
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cerrar_conexion(conexion)

def actualizar_programa(id_programa, programa):
    conexion = obtener_conexion()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "UPDATE programa SET nombre_programa=>%s WHERE id_programa=%s"
            cursor.excute(sql (programa, id_programa))
            conexion.commit()
            if cursor.rowcount > 0:
                print("Registro actualizado con éxito")
            else:
                print("El ID del regitro no existe")
        except Exception as e:
            print(f"Error al actualizar información: {e}")
        finally:
            cerrar_conexion(conexion)

def eliminar_programa(id_programa):
    conexion = obtener_conexion()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "DELETE FROM programa WHERE id_programa= %s"
            cursor.execute(sql, (id_seemstre))
            conexion.commit()
            if cursor.rowcount > 0:
                print("El registro se ha eliminado correctamente")
            else:
                print("El ID del registro no existe")
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cerrar_conexion()


if __name__ == "__main__":
    programas = listar_programa()
    print("Lista de programas:")
    for programa in programas:
        print(programa)
    
    #insertar_programa(("APSTI",))
    #insertar_programa(("ANI",))
    #insertar_programa(("MA",))
    #insertar_programa(("ET",))
    
