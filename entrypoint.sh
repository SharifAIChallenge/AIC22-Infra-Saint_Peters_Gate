#!/bin/bash
python manage.py migrate sites
python manage.py migrate
gunicorn --bind=0.0.0.0:5050 --timeout=90
