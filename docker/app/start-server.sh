#!/bin/bash

cd /home/app
poetry install
cd project

if [ "${DJANGO_ENV}" = 'production' ]; then
    poetry run python manage.py migrate --settings config.settings
    poetry run python manage.py collectstatic --noinput
    poetry run gunicorn config.wsgi:application -c /home/docker/etc/gunicorn.conf -b :8080
else
    poetry run python manage.py migrate
    poetry run python manage.py runserver 0.0.0.0:8000
fi
