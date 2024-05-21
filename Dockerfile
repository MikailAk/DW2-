# Gebruik een basis image, bijvoorbeeld een eenvoudige nginx
FROM nginx:alpine

# Voeg een dummy-bestand toe dat elke keer verandert om caching te voorkomen
ARG CACHEBUST=1
ADD .timestamp /usr/share/nginx/html/

# Kopieer de HTML-bestanden naar de nginx webserver directory
COPY html /usr/share/nginx/html

# Maak een buildtime.txt bestand aan met de huidige tijd
RUN date > /usr/share/nginx/html/buildtime.txt

# Stel de standaard poort in
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
