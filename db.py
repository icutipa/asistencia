import mysql.connector
from mysql.connector import Error

DB_CONFIG = {
    'host': 'localhost',
    'database': 'asistencia',
    'user': 'root',
    'password': '',
    'port': 3306
}

def conectar_bd():
    try:
        connection = mysql.connector.connect(**DB_CONFIG)
        if connection.is_connected():
            #print(f"Conectado a la base de datos: {DB_CONFIG['database']}")
            return connection
    except Error as e:
        print(f"Error al conectar a MySQL: {e}")
        return None

def cerrar_conexion(connection):
    if connection and connection.is_connected():
        connection.close()
        #print("Conexión cerrada")

def obtener_conexion():
    return conectar_bd()

## if __name__ == "__main__":
##    conexion = obtener_conexion()
##    if conexion:
##        cursor = conexion.cursor()
##        cursor.execute("SELECT VERSION()")
##        version = cursor.fetchone()
##        #print(f"Versión de MySQL: {version[0]}")
##        cursor.close()
##        cerrar_conexion(conexion)
##    else:
##        print("No se pudo establecer la conexión")