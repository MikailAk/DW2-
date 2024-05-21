@echo off
REM Update de timestamp om caching te voorkomen
bash -c "./update-timestamp.sh"

REM Build de Docker image zonder cache
docker build --no-cache -t demo-site .

REM Stop en verwijder een bestaande container
docker stop demo-site
docker rm demo-site

REM Start de Docker container op poort 81
docker run -d -p 81:80 --name demo-site demo-site
