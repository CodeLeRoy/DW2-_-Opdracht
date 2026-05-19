# Gebruik een fixed tag voor stabiliteit over 6 maanden
FROM nginx:1.27.0

# Kopieer de inhoud van de lokale html-map naar de standaard Nginx web-root
COPY ./html /usr/share/nginx/html

# Genereer buildtime.txt in de web-root tijdens het bouwen van de image
RUN date > /usr/share/nginx/html/buildtime.txt
