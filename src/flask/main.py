# -*- coding: utf-8 -*-
import sqlite3
from flask import Blueprint, Flask, flash, render_template, request, jsonify, g, redirect, url_for

bp = Blueprint('root', __name__, template_folder='templates', static_folder='static')

@bp.route("/", methods=["POST", "GET"])
def index():
    args = {'method': 'GET'}
    if request.method == 'GET':
        return render_template('index.html', args=args)
    else:
        if 'file' not in request.files:
            flash('No file part')
            return redirect(request.url)
        file = request.files['file']
        if file.filename == '':
            flash('No image selected for uploading')
            return redirect(request.url)
        if not allowed_file(file.filename):
            flash('Allowed image types are -> png, jpg, jpeg, gif')
            return redirect(request.url)
    # https://habr.com/ru/post/201386/
        data = file.read(MAX_FILE_SIZE)
        if len(data) == MAX_FILE_SIZE:
            args['files_size_error'] = True
            args['method'] = 'POST'
            return render_template('index.html', args=args)

        filename = secure_filename(file.filename)
        filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
        with open(filepath, 'wb') as file:
            file.write(data)
            file.close()
        label = predict_cat_of_file(filepath)

        print("label:", label)
        return render_template('index.html', filename=filename, label=label, args=args)

@bp.route('/display/<filename>')
def display_image(filename):
    return redirect(url_for('static', filename='uploads/' + filename), code=301)

import os
app = Flask(__name__)
app.secret_key = "secret key"
MAX_CONTENT_LENGTH = os.environ.get('MAX_CONTENT_LENGTH')
if MAX_CONTENT_LENGTH is not None:
    MAX_CONTENT_LENGTH = int(MAX_CONTENT_LENGTH)
else:
    MAX_CONTENT_LENGTH = 16 * 1024 * 1024

MAX_FILE_SIZE = MAX_CONTENT_LENGTH + 1
UPLOAD_FOLDER = 'static/uploads/'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
from werkzeug.utils import secure_filename

ALLOWED_EXTENSIONS = set(['png', 'jpg', 'jpeg', 'gif'])
def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

CAT_NAMES = [
  'Приора', #0
  'Ford Focus', #1
  'Самара', #2
  'ВАЗ-2110', #3
  'Жигули', #4
  'Нива', #5
  'Калина', #6
  'ВАЗ-2109', #7
  'Volkswagen Passat', #8
  'ВАЗ-21099' #9
]

MODEL_FOLDER = 'model/'
import tensorflow as tf
from keras.models import load_model
import numpy as np
model = load_model(MODEL_FOLDER + 'car-classification_models_aug-NASNetMobile-224x224.h5')

def load_and_preprocess_image(path):
    image = tf.io.read_file(path)
    image = tf.image.decode_jpeg(image, channels=3)
    size = (224, 224)
    image = tf.image.resize(image, size, preserve_aspect_ratio = True)
    image = tf.image.resize_with_pad(image, *size)
    image = tf.cast(image, tf.float32) / 128 - 1
    image = tf.expand_dims(image, 0)
    return image

def predict_cat_of_file(filepath):
    with tf.device("/cpu:0"):
        paths_ds = tf.data.Dataset.from_tensor_slices([filepath])
        print('paths_ds:', paths_ds)

        image_ds = paths_ds.map(load_and_preprocess_image)
        print('image_ds:', image_ds)

        print('model predict . . .')
        predictions = model.predict(image_ds)
        print('got predictions')
        labels = np.argmax(predictions, axis = 1)
        return CAT_NAMES[labels[0]]

# predict_cat_of_file('static/uploads/niva.jpg')


app.config['MAX_CONTENT_LENGTH'] = MAX_CONTENT_LENGTH
app_root = os.environ.get('APP_ROOT')
if app_root is None: 
    app_root = ''
app.register_blueprint(bp, url_prefix='/' + app_root)

