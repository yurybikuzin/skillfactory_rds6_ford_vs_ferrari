#!/usr/bin/env bash
mkdir -p /app
dir=$(dirname "$0")
cp $dir/flask/main.py /app/
mkdir -p /app/templates
cp $dir/flask/templates/index.html /app/templates/
mkdir -p /app/static/uploads
cp $dir/flask/static/uploads/niva.jpg /app/static/uploads/
cp $dir/flask/static/style.css /app/static/
mkdir -p /app/model/
cp $dir/flask/model/car-classification_models_aug-NASNetMobile-224x224.h5 /app/model/
cd /app
