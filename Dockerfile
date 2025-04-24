FROM python:3.11

# Créer un utilisateur non-root
RUN useradd -m appuser

WORKDIR /app
COPY . .

# Donner les droits à l'utilisateur non-root
RUN chown -R appuser /app

# Utiliser un utilisateur non-root à la fin
USER appuser

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
