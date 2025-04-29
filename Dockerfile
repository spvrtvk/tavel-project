# Base image Python léger
FROM python:3.9-slim

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier tous les fichiers du projet
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Ouvrir le port 8080
EXPOSE 8080

# Commande pour lancer l'app
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "--workers", "1", "app:app"]