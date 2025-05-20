#!/bin/bash
set -e # Salir inmediatamente si un comando falla

# Esperar a la base de datos (ejemplo, si no tienes un healthcheck para postgres)
until nc -z postgres 5432; do
  echo "Esperando a postgres..."
  sleep 1
done

# Ejecutar migraciones (opcional, pero común en producción antes de iniciar el servidor)
# bundle exec rails db:migrate

# Finalmente, ejecutar el comando pasado al entrypoint (que será "rails server -b 0.0.0.0")
exec "$@"
