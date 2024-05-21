# Gebruik een basis image, bijvoorbeeld een eenvoudige nginx
FROM nginx:alpine

# Kopieer de HTML-bestanden naar de nginx webserver directory
COPY html /usr/share/nginx/html

# Maak een buildtime.txt bestand aan met de huidige tijd
RUN date > /usr/share/nginx/html/buildtime.txt

# Stel de standaard poort in
EXPOSE 81

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
