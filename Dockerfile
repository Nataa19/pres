# Dockerfile
FROM ruby:3.4.3

# Instalamos dependencias
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  curl \
  git \
  netcat-openbsd


# Directorio de trabajo
WORKDIR /app

# Archivos necesarios para instalar gems
#COPY ./contenido/Gemfile ./contenido/Gemfile.lock ./
COPY ./contenido .
RUN bundle install
# Copiar toda la app
#COPY ./contenido .
# Copiar script de arranque
COPY ./contenido/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Puerto expuesto
EXPOSE 80

# Comando por defecto
CMD ["rails", "server", "-b", "0.0.0.0"]
