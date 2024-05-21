@echo off
REM Build de Docker image
docker build -t demo-site .

REM Stop en verwijder een bestaande container
docker stop demo-site
docker rm demo-site

REM Start de Docker container op poort 81
docker run -d -p 81:80 --name demo-site demo-site
