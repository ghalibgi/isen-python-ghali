FROM python:3.11

# Créer un utilisateur non-root
RUN useradd -m appuser

WORKDIR /app
COPY . .

# Changer de propriétaire et utiliser l'utilisateur
RUN chown -R appuser /app
USER appuser

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
