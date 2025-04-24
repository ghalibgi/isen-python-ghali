FROM python:3.11

# Créer un utilisateur non-root
RUN useradd -m appuser

# Passer à l'utilisateur non-root dès que possible
USER appuser

WORKDIR /app
COPY . .


# Donner les droits à l'utilisateur
RUN chown -R appuser /app

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
