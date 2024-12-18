# Utilizamos la imagen oficial de Python 3.10
FROM python:3-slim

# Establecemos el directorio de trabajo en /app
WORKDIR /app

# Copiamos solo el requirements.txt primero
COPY requirements.txt ./

# Instalamos las dependencias de la aplicación! prueba 3
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el resto de los archivos al contenedor
COPY . .

# Exponemos el puerto 5000 para que Flask pueda ser accedido desde fuera del contenedor
EXPOSE 5000

# Definimos las variables de entorno necesarias para Flask
ENV FLASK_APP=app.py
ENV FLASK_ENV=development

# Comando para ejecutar la aplicación Flask
CMD ["flask", "run", "--host=0.0.0.0"] 

