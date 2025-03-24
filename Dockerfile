FROM ubuntu:20.04 
LABEL author=ethans 
RUN apt-get update -y &&\ 
    apt-get install nginx -y  
WORKDIR /var/www/html 
COPY index.html . 
EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]
