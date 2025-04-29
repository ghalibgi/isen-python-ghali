FROM python:3.11

# Exposer le port 8080
EXPOSE 8080

# Créer un utilisateur non-root
RUN useradd -m appuser

# Passer à l'utilisateur non-root dès que possible
USER appuser

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'application dans le conteneur
COPY . .

# Donner les droits à l'utilisateur sur les fichiers
RUN chown -R appuser /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Définir la commande de démarrage, utiliser la variable d'environnement PORT
CMD ["python", "manage.py", "runserver", "0.0.0.0:$PORT"]
