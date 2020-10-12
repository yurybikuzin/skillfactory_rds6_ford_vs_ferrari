## 42-TPU

```python
prepare_models([
   {'code': 'aug-IRNV2', 'base_class': tf.keras.applications.InceptionResNetV2},
])
```

```
Prepare model based on aug-IRNV2-640x480 . . .
base_model_class: <function InceptionResNetV2 at 0x7f4a3e4b3c80>
Downloading data from https://storage.googleapis.com/tensorflow/keras-applications/inception_resnet_v2/inception_resnet_v2_weights_tf_dim_ordering_tf_kernels_notop.h5
219062272/219055592 [==============================] - 1s 0us/step
Finetune model: 0% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
  2/364 [..............................] - ETA: 25s - loss: 2.7563 - accuracy: 0.1250WARNING:tensorflow:Callbacks method `on_train_batch_end` is slow compared to the batch time (batch time: 0.0123s vs `on_train_batch_end` time: 0.1255s). Check your callbacks.
364/364 [==============================] - 124s 339ms/step - loss: 1.6256 - accuracy: 0.4427 - val_loss: 1.0852 - val_accuracy: 0.6293
Epoch 2/20
364/364 [==============================] - 89s 245ms/step - loss: 1.2448 - accuracy: 0.5616 - val_loss: 0.9898 - val_accuracy: 0.6625
Epoch 3/20
364/364 [==============================] - 88s 242ms/step - loss: 1.1342 - accuracy: 0.6056 - val_loss: 0.9431 - val_accuracy: 0.6779
Epoch 4/20
364/364 [==============================] - 89s 244ms/step - loss: 1.0863 - accuracy: 0.6234 - val_loss: 0.9065 - val_accuracy: 0.6949
Epoch 5/20
364/364 [==============================] - 85s 233ms/step - loss: 1.0429 - accuracy: 0.6372 - val_loss: 0.8831 - val_accuracy: 0.6982
Epoch 6/20
364/364 [==============================] - 90s 247ms/step - loss: 1.0303 - accuracy: 0.6439 - val_loss: 0.8807 - val_accuracy: 0.7049
Epoch 7/20
364/364 [==============================] - 98s 268ms/step - loss: 1.0221 - accuracy: 0.6460 - val_loss: 0.8684 - val_accuracy: 0.7062
Epoch 8/20
364/364 [==============================] - 112s 308ms/step - loss: 1.0015 - accuracy: 0.6474 - val_loss: 0.8593 - val_accuracy: 0.7116
939.3 secs, validation accuracy = 0.711568
Save aug-IRNV2-640x480-step0.h5 . . .
Copy aug-IRNV2-640x480-step0.h5 to gs://yurybikuzin/car-classification/models/aug-IRNV2-640x480-step0.h5 . . .
Finetune model: 25% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
  2/364 [..............................] - ETA: 31s - loss: 1.4646 - accuracy: 0.4219WARNING:tensorflow:Callbacks method `on_train_batch_end` is slow compared to the batch time (batch time: 0.0138s vs `on_train_batch_end` time: 0.1560s). Check your callbacks.
364/364 [==============================] - 122s 335ms/step - loss: 0.9741 - accuracy: 0.6644 - val_loss: 0.5066 - val_accuracy: 0.8154
Epoch 2/20
364/364 [==============================] - 89s 245ms/step - loss: 0.4416 - accuracy: 0.8572 - val_loss: 0.2507 - val_accuracy: 0.9226
Epoch 3/20
364/364 [==============================] - 91s 249ms/step - loss: 0.2902 - accuracy: 0.9106 - val_loss: 0.1799 - val_accuracy: 0.9452
Epoch 4/20
364/364 [==============================] - 90s 246ms/step - loss: 0.2328 - accuracy: 0.9275 - val_loss: 0.1515 - val_accuracy: 0.9594
Epoch 5/20
364/364 [==============================] - 86s 237ms/step - loss: 0.1663 - accuracy: 0.9491 - val_loss: 0.1488 - val_accuracy: 0.9589
Epoch 6/20
364/364 [==============================] - 102s 281ms/step - loss: 0.1440 - accuracy: 0.9568 - val_loss: 0.1504 - val_accuracy: 0.9609
701.9 secs, validation accuracy = 0.960925
Save aug-IRNV2-640x480-step25.h5 . . .
Copy aug-IRNV2-640x480-step25.h5 to gs://yurybikuzin/car-classification/models/aug-IRNV2-640x480-step25.h5 . . .
Finetune model: 50% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
  2/364 [..............................] - ETA: 39s - loss: 0.3256 - accuracy: 0.9062WARNING:tensorflow:Callbacks method `on_train_batch_end` is slow compared to the batch time (batch time: 0.0172s vs `on_train_batch_end` time: 0.1992s). Check your callbacks.
364/364 [==============================] - 136s 374ms/step - loss: 0.5792 - accuracy: 0.8099 - val_loss: 1.2242 - val_accuracy: 0.7229
Epoch 2/20
364/364 [==============================] - 105s 288ms/step - loss: 0.3165 - accuracy: 0.9019 - val_loss: 0.1292 - val_accuracy: 0.9620
Epoch 3/20
364/364 [==============================] - 102s 280ms/step - loss: 0.2094 - accuracy: 0.9384 - val_loss: 0.1273 - val_accuracy: 0.9632
Epoch 4/20
364/364 [==============================] - 117s 321ms/step - loss: 0.1632 - accuracy: 0.9530 - val_loss: 0.1185 - val_accuracy: 0.9666
705.9 secs, validation accuracy = 0.966581
Save aug-IRNV2-640x480-step50.h5 . . .
Copy aug-IRNV2-640x480-step50.h5 to gs://yurybikuzin/car-classification/models/aug-IRNV2-640x480-step50.h5 . . .
Finetune model: 75% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
  2/364 [..............................] - ETA: 49s - loss: 0.1352 - accuracy: 0.9688WARNING:tensorflow:Callbacks method `on_train_batch_end` is slow compared to the batch time (batch time: 0.0224s vs `on_train_batch_end` time: 0.2470s). Check your callbacks.
364/364 [==============================] - 157s 433ms/step - loss: 0.5226 - accuracy: 0.8373 - val_loss: 12.7404 - val_accuracy: 0.5175
Epoch 2/20
364/364 [==============================] - 125s 343ms/step - loss: 0.2684 - accuracy: 0.9200 - val_loss: 1.9010 - val_accuracy: 0.9221
Epoch 3/20
364/364 [==============================] - 122s 336ms/step - loss: 0.1798 - accuracy: 0.9475 - val_loss: 3.1313 - val_accuracy: 0.9272
Epoch 4/20
364/364 [==============================] - 137s 375ms/step - loss: 0.1175 - accuracy: 0.9653 - val_loss: 1.8489 - val_accuracy: 0.9303
911.8 secs, validation accuracy = 0.930334
Save aug-IRNV2-640x480-step75.h5 . . .
Copy aug-IRNV2-640x480-step75.h5 to gs://yurybikuzin/car-classification/models/aug-IRNV2-640x480-step75.h5 . . .
Finetune model: 100% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
  2/364 [..............................] - ETA: 1:08 - loss: 0.0855 - accuracy: 1.0000WARNING:tensorflow:Callbacks method `on_train_batch_end` is slow compared to the batch time (batch time: 0.0252s vs `on_train_batch_end` time: 0.3506s). Check your callbacks.
364/364 [==============================] - 197s 541ms/step - loss: 0.4549 - accuracy: 0.8616 - val_loss: 6.4474 - val_accuracy: 0.7280
Epoch 2/20
364/364 [==============================] - 163s 449ms/step - loss: 0.2934 - accuracy: 0.9171 - val_loss: 0.4526 - val_accuracy: 0.9254
Epoch 3/20
364/364 [==============================] - 161s 443ms/step - loss: 0.1904 - accuracy: 0.9446 - val_loss: 3.6144 - val_accuracy: 0.6987
Epoch 4/20
364/364 [==============================] - 166s 455ms/step - loss: 0.1421 - accuracy: 0.9596 - val_loss: 0.1415 - val_accuracy: 0.9609
Epoch 5/20
364/364 [==============================] - 162s 445ms/step - loss: 0.0956 - accuracy: 0.9722 - val_loss: 0.1516 - val_accuracy: 0.9609
Epoch 6/20
364/364 [==============================] - 178s 490ms/step - loss: 0.0802 - accuracy: 0.9786 - val_loss: 0.3341 - val_accuracy: 0.9571
1588.3 secs, validation accuracy = 0.957069
Save aug-IRNV2-640x480-step100.h5 . . .
Copy aug-IRNV2-640x480-step100.h5 to gs://yurybikuzin/car-classification/models/aug-IRNV2-640x480-step100.h5 . . .
Save aug-IRNV2-640x480.h5 . . .
Copy aug-IRNV2-640x480.h5 to gs://yurybikuzin/car-classification/models/aug-IRNV2-640x480.h5 . . .
Model based on aug-IRNV2-640x480 is ready
```

## yb-TPU

```python
prepare_models([
   {'code': 'aug-X', 'base_class': tf.keras.applications.xception.Xception, 'augmentation': augmentation},
])
```

```
Prepare model based on aug-X-640x480 . . .
used augmentation
base_model_class: <function Xception at 0x7f1d563162f0>
Finetune model: 0% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
  2/364 [..............................] - ETA: 12s - loss: 3.1460 - accuracy: 0.0781WARNING:tensorflow:Callbacks method `on_train_batch_end` is slow compared to the batch time (batch time: 0.0068s vs `on_train_batch_end` time: 0.0586s). Check your callbacks.
364/364 [==============================] - 382s 1s/step - loss: 1.6897 - accuracy: 0.4274 - val_loss: 1.0798 - val_accuracy: 0.6267
Epoch 2/20
364/364 [==============================] - 382s 1s/step - loss: 1.3687 - accuracy: 0.5236 - val_loss: 0.9637 - val_accuracy: 0.6622
Epoch 3/20
364/364 [==============================] - 605s 2s/step - loss: 1.2809 - accuracy: 0.5495 - val_loss: 0.8927 - val_accuracy: 0.6830
Epoch 4/20
364/364 [==============================] - 608s 2s/step - loss: 1.2276 - accuracy: 0.5677 - val_loss: 0.8608 - val_accuracy: 0.7018
Epoch 5/20
364/364 [==============================] - 604s 2s/step - loss: 1.2255 - accuracy: 0.5634 - val_loss: 0.8320 - val_accuracy: 0.7082
Epoch 6/20
364/364 [==============================] - 617s 2s/step - loss: 1.1845 - accuracy: 0.5833 - val_loss: 0.8274 - val_accuracy: 0.7098
3275.4 secs, validation accuracy = 0.709769
Save aug-X-640x480-step0.h5 . . .
Copy aug-X-640x480-step0.h5 to gs://yurybikuzin/car-classification/models/aug-X-640x480-step0.h5 . . .
```

## 42-GPU

```python
prepare_models([
   {'code': 'aug-InceptionV3', 'base_class': tf.keras.applications.InceptionV3, 'size': (299, 299), 'augmentation': augmentation},
])
```
