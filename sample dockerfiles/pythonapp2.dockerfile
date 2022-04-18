FROM continuumio/anaconda3
#Cambiando de directorio
WORKDIR /app
#Copia de archivos desde local
ADD [".", "/app"]
#Actualizando pip para instalar packages necesarios
RUN pip install --upgrade pip
RUN pip install -r requirement.txt
#Expone puerto de contenedor
EXPOSE 5000
CMD [ "python3", "app.py"]