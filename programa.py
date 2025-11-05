from db import conexion, obtener_conexion, cerrar_conexion

def listar_programas():
    conexion = obtener_conexion()
    programas = []
    if conexion:
        try:
            cursor = conexion.cursor()
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
            sql = "INSERT INTO programa (nombre_programa) VALUES(%s)"
            cursor.execute(sql, programa)
            conexion.commit()
            print("Registro guardado satisfactoriamente")
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cerrar_conexion(conexion)

def actualizar_programa(id_programa, programa):
    conexion = obtener_conexion()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "UPDATE programa SET nombre_programa=%s WHERE id_programa=%s"
            cursor.execute(sql, (programa, id_programa))
            conexion.commit()
            if cursor.rowcount > 0:
                print("Registro actualizado correctamente")
            else:
                print("El ID del registro no se encuentra")
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cerrar_conexion()

def eliminar_programa(id_programa):
    conexion = obtener_conexion()
    if conexion:
        try:
            cursor = conexion.cursor()
            sql = "DELETE FROM programa WHERE id_programa=%s"
            cursor.execute(sql,(id_programa))
            conexion.commit()
            if cursor.rowcount > 0:
                print("Registro eliminado")
            else:
                print("El ID del programa no existe")
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cerrar_conexion(conexion)
    
if __name__ == "__main__":
    #insertar_programa(("APSTI",))
    #insertar_programa(("ANI",))
    #insertar_programa(("ET",))
    #insertar_programa(("MA",))

    programas = listar_programas()
    print("Lista de Programas de Estudio:")
    for programa in programas:
        print(programa)

