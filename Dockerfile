FROM python:3.6-alpine

LABEL maintainer="Bernard Biokou"

WORKDIR /opt

RUN pip install flask

ENV ODOO_URL=http://${HOST_IP}:8069  PGADMIN_URL=http://${HOST_IP}:5050

EXPOSE 8080

COPY . /opt

ENTRYPOINT python app.py

