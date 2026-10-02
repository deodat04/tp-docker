FROM python:3.11-slim

LABEL authors="deodat04"

WORKDIR /app

RUN apt-get update

# Copie des dépendances
COPY . .

# Installation des dépendances Python
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

CMD ["python3", "server.py"]