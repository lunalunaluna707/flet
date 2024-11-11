# Usa una imagen base con Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto
COPY . /app

# Instala las dependencias
RUN pip install -r requirements.txt

# Expon el puerto para Flet (por defecto es el 8501)
EXPOSE 8501

# Ejecuta la aplicación Flet
CMD ["python", "main.py"]
