FROM python:3.8.5-slim-buster

RUN pip install --upgrade pip
RUN pip install flask keras tensorflow

# RUN true && \
#     apt update && \
#     apt install -y python3-dev build-essential gcc && \ 
# true
# RUN pip install uwsgi

RUN mkdir -p app/static/uploads app/templates app/model
WORKDIR /app
COPY src/flask/main.py main.py
COPY src/flask/templates/index.html templates/index.html
COPY src/flask/static/style.css static
COPY src/flask/model/car-classification_models_aug-NASNetMobile-224x224.h5 model/
COPY prod/flask/run.sh .

# ENV FLASK_APP=main.py
# ENV FLASK_ENV=development
CMD [ "/app/run.sh" ]
# CMD ["flask", "run", "--host=0.0.0.0", "--port=$PORT"]


#
#
#
#
# mkdir -p /app
# dir=$(dirname "$0")
# cp $dir/flask/main.py /app/
# mkdir -p /app/templates
# cp $dir/flask/templates/index.html /app/templates/
# mkdir -p /app/static/uploads
# cp $dir/flask/static/style.css /app/static/
# mkdir -p /app/model/
# cp $dir/flask/model/car-classification_models_aug-NASNetMobile-224x224.h5 /app/model/
# cd /app


# FROM ubuntu:18.04
#
# RUN true && \
#     apt update && \
#     apt install -y \
#         locales \
#     && \
#     locale-gen en_US.UTF-8 && \
#     update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 LC_CTYPE=en_US.UTF-8 && \
#     update-locale && \
# true
#
# ENV LANG=en_US.UTF-8 
# ENV LC_ALL=en_US.UTF-8 
# ENV LC_CTYPE=en_US.UTF-8
#
# RUN true && \
#     apt update && \
#     apt install -y \
#         python3 \
#         python3-pip \
#     && \
# true
#
# RUN pip3 install flask

# WORKDIR /app
# ENV FLASK_APP=main.py
# ENV FLASK_ENV=development

# localectl set-locale LANG=en_US.utf8
# RUN echo 'echo PROFILE' >> $HOME/.profile
# RUN echo 'echo BASH_PROFILE' >> $HOME/.bash_profile
# RUN echo '. /etc/default/locale' >> $HOME/.bash_profile
# RUN echo '. /etc/default/locale' >> $HOME/.bash_profile

#
# RUN true && \
#     apt update && \
#     apt intall -y \
#         locales \
#         python-pip3 \
# #         python-pip \
#         python-dev \
# #         python-virtualenv \
# #         python-numpy \
#         python-wheel \
# #         openjdk-8-jdk \
# #         curl \
#     && \
# #     mkdir -p ~/virtualenv/tensorflow && \
# #     virtualenv --system-site-packages ~/virtualenv/tensorflow && \
# #     source ~/virtualenv/tensorflow/bin/activate && \
# #     deactivate \
# true
#
# RUN pip3 install flask
#
# RUN true && \
#     apt update && \
#     apt intall -y \
#         locales \
#         python-pip \
#         python-dev \
#         python-virtualenv \
#         python-numpy \
#         python-wheel \
#         openjdk-8-jdk \
#         curl \
#     && \
#     mkdir -p ~/virtualenv/tensorflow && \
#     virtualenv --system-site-packages ~/virtualenv/tensorflow && \
#     source ~/virtualenv/tensorflow/bin/activate && \
#     deactivate \
# true
#
# # RUN apt-get -y install python-pip python-dev python-virtualenv python-numpy python-wheel
# # RUN true &&
# # RUN virtualenv --system-site-packages ~/virtualenv/tensorflow
# # RUN source ~/virtualenv/tensorflow/bin/activate
# # RUN deactivate
# # RUN apt-get install -y openjdk-8-jdk
# RUN true && \
#     echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list && \
#     curl https://bazel.build/bazel-release.pub.gpg | apt-key add - && \
#     apt update && \
#     apt install -y bazel && \
# true
#
# RUN mkdir -p ~/installers/tensorflow/tf-cpu
# RUN cd ~/installers/tensorflow/tf-cpu
# RUN curl -O https://github.com/tensorflow/tensorflow/archive/v1.10.0.zip


# FROM python:3.8-slim
#
# RUN true && \
#     apt-get clean && \ 
#     apt-get -y update && \ 
# true
#
# RUN true && \
#     apt-get -y install curl python3-dev build-essential gcc && \ 
# true
#
# ADD ./prod/flask/requirements.txt /tmp/requirements.txt
#
# # Install dependencies
# RUN pip3 install --no-cache-dir -q -r /tmp/requirements.txt
#
# # Add our code
# WORKDIR /app
# ADD src/flask/model model
# ADD src/flask/templates templates
# # ADD src/flask/static static
# COPY src/flask/static/style.css static/
# COPY src/flask/main.py main.py
# COPY prod/flask/uwsgi.ini uwsgi.ini
# RUN mkdir -p static/uploads && chmod a+xwr static/uploads/
#
# # USER www-data
#
# # Run the app.  CMD is required to run on Heroku
# CMD uwsgi --ini uwsgi.ini
#
