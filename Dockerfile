# Usa una imagen base de Python
FROM python:3.12

# Configura el directorio de trabajo
WORKDIR /app

# Copia los archivos de requisitos y los instalamos
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código del proyecto :>
COPY . /app/

# Expone el puerto en el que Django estará corriendo
EXPOSE 8000

# Define el comando por defecto para ejecutar el servidor
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
