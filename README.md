# Apliación de Asistencia - Python & MySQL

Este proyecto es una aplicación de escritorio desarrollada en **Python**, que gestiona el registro y control de asistencias de estudiantes.  
Utiliza **MySQL** como motor de base de datos y está diseñado para ejecutarse dentro de un entorno virtual.

---

## 🚀 Instalación y configuración

Sigue estos pasos para clonar y ejecutar el proyecto en tu máquina local:

### 1️⃣ Clonar el repositorio
```bash
git clone https://github.com/TU_USUARIO/mi_proyecto.git
```

### 2️⃣ Acceder a la carpeta del proyecto
```bash
cd mi_proyecto
```

### 3️⃣ Crear un entorno virtual
```bash
python -m venv venv
```

### 4️⃣ Activar el entorno virtual
En **Windows**:
```bash
venv\Scripts\activate
```
En **Linux / Mac**:
```bash
source venv/bin/activate
```

### 5️⃣ Instalar dependencias
```bash
pip install -r requirements.txt
```

### 6️⃣ Ejecutar la aplicación
```bash
python app.py
```

---

## 🧰 Requisitos

- Python 3.10 o superior  
- MySQL Server (instalado y en ejecución)  
- Librería `mysql-connector-python`

---

## ⚙️ Configuración de la base de datos

1. Crea la base de datos en tu servidor MySQL.  
```bash
create database nombre_base_de_datos;
```
2. Importa el archivo `db.sql` incluido en el proyecto:
```bash
mysql -u tu_usuario -p nombre_base_de_datos < db.sql
```
3. Verifica la configuración de conexión en el archivo `db.py` (host, usuario, contraseña, base de datos).  
    host = "localhost"
    user = "root"
    password = "tu_contraseña"
    database = "nombre_base_de_datos"
    port = 3306

---

## 📂 Estructura básica del proyecto

```
mi_proyecto/
│
├── app.py
├── db.py
├── programa.py
├── semestre.py
├── estudiante.py
├── asistencia.py
├── requirements.txt
├── db.sql
└── README.md
```

---

## 👨‍💻 Autor

Desarrollado por **[Ivan Cutipa]**  
📧 Contacto: edi72391@gmail.com  
