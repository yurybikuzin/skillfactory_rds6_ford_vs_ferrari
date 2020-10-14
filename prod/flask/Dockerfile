FROM python:3.8-slim

RUN true && \
    apt-get clean && \ 
    apt-get -y update && \ 
true

RUN true && \
    apt-get -y install curl python3-dev build-essential gcc && \ 
true

ADD ./prod/flask/requirements.txt /tmp/requirements.txt

# Install dependencies
RUN pip3 install --no-cache-dir -q -r /tmp/requirements.txt

# Add our code
WORKDIR /app
ADD src/flask/model model
ADD src/flask/templates templates
# ADD src/flask/static static
COPY src/flask/static/style.css static/
COPY src/flask/main.py main.py
COPY prod/flask/uwsgi.ini uwsgi.ini
# RUN mkdir -p static/uploads && chmod a+xwr static/uploads/

# USER www-data

# Run the app.  CMD is required to run on Heroku
CMD uwsgi --ini uwsgi.ini

