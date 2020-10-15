#!/usr/bin/env bash
FLASK_APP=main.py FLASK_ENV=production FLASK_RUN_PORT=$PORT flask run --host=0.0.0.0 
