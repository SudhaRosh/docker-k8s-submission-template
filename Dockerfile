# Base image
FROM python:alpine

WORKDIR /app/backend



COPY backend/requirements.txt .

RUN pip install -r requirements.txt
COPY backend/ .
COPY ui ui

EXPOSE 8080

ENTRYPOINT [ "uvicorn" ]

CMD [ "main:app", "--host=0.0.0.0", "--port=8080" ]
