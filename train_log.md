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
used augmentation
Finetune model: 25% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
  2/364 [..............................] - ETA: 15s - loss: 1.4460 - accuracy: 0.4844WARNING:tensorflow:Callbacks method `on_train_batch_end` is slow compared to the batch time (batch time: 0.0080s vs `on_train_batch_end` time: 0.0761s). Check your callbacks.
364/364 [==============================] - 387s 1s/step - loss: 0.9475 - accuracy: 0.6738 - val_loss: 0.4409 - val_accuracy: 0.8357
Epoch 2/20
364/364 [==============================] - 387s 1s/step - loss: 0.5042 - accuracy: 0.8309 - val_loss: 0.2239 - val_accuracy: 0.9224
Epoch 3/20
364/364 [==============================] - 613s 2s/step - loss: 0.3770 - accuracy: 0.8780 - val_loss: 0.1624 - val_accuracy: 0.9494
Epoch 4/20
364/364 [==============================] - 609s 2s/step - loss: 0.3027 - accuracy: 0.9004 - val_loss: 0.1409 - val_accuracy: 0.9594
Epoch 5/20
364/364 [==============================] - 614s 2s/step - loss: 0.2736 - accuracy: 0.9137 - val_loss: 0.1365 - val_accuracy: 0.9571
Epoch 6/20
364/364 [==============================] - 617s 2s/step - loss: 0.2337 - accuracy: 0.9242 - val_loss: 0.1241 - val_accuracy: 0.9635
3297.6 secs, validation accuracy = 0.963496
Save aug-X-640x480-step25.h5 . . .
Copy aug-X-640x480-step25.h5 to gs://yurybikuzin/car-classification/models/aug-X-640x480-step25.h5 . . .
used augmentation
Finetune model: 50% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
  2/364 [..............................] - ETA: 19s - loss: 0.6406 - accuracy: 0.7969WARNING:tensorflow:Callbacks method `on_train_batch_end` is slow compared to the batch time (batch time: 0.0093s vs `on_train_batch_end` time: 0.0981s). Check your callbacks.
364/364 [==============================] - 404s 1s/step - loss: 0.5207 - accuracy: 0.8310 - val_loss: 0.2107 - val_accuracy: 0.9393
Epoch 2/20
364/364 [==============================] - 381s 1s/step - loss: 0.3335 - accuracy: 0.8939 - val_loss: 0.1543 - val_accuracy: 0.9532
Epoch 3/20
364/364 [==============================] - 610s 2s/step - loss: 0.2401 - accuracy: 0.9181 - val_loss: 0.1219 - val_accuracy: 0.9648
Epoch 4/20
364/364 [==============================] - 602s 2s/step - loss: 0.1956 - accuracy: 0.9418 - val_loss: 0.1054 - val_accuracy: 0.9699
Epoch 5/20
364/364 [==============================] - 616s 2s/step - loss: 0.1631 - accuracy: 0.9470 - val_loss: 0.1084 - val_accuracy: 0.9684
2698.0 secs, validation accuracy = 0.96838
Save aug-X-640x480-step50.h5 . . .
Copy aug-X-640x480-step50.h5 to gs://yurybikuzin/car-classification/models/aug-X-640x480-step50.h5 . . .
used augmentation
Finetune model: 75% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
  2/364 [..............................] - ETA: 23s - loss: 0.3714 - accuracy: 0.8750WARNING:tensorflow:Callbacks method `on_train_batch_end` is slow compared to the batch time (batch time: 0.0113s vs `on_train_batch_end` time: 0.1166s). Check your callbacks.
364/364 [==============================] - 391s 1s/step - loss: 0.4065 - accuracy: 0.8687 - val_loss: 0.1965 - val_accuracy: 0.9404
Epoch 2/20
364/364 [==============================] - 381s 1s/step - loss: 0.2839 - accuracy: 0.9097 - val_loss: 0.1736 - val_accuracy: 0.9509
Epoch 3/20
364/364 [==============================] - 611s 2s/step - loss: 0.2030 - accuracy: 0.9367 - val_loss: 0.1250 - val_accuracy: 0.9648
Epoch 4/20
364/364 [==============================] - 609s 2s/step - loss: 0.1746 - accuracy: 0.9445 - val_loss: 0.1188 - val_accuracy: 0.9686
Epoch 5/20
364/364 [==============================] - 615s 2s/step - loss: 0.1606 - accuracy: 0.9495 - val_loss: 0.1149 - val_accuracy: 0.9725
2698.1 secs, validation accuracy = 0.972494
Save aug-X-640x480-step75.h5 . . .
Copy aug-X-640x480-step75.h5 to gs://yurybikuzin/car-classification/models/aug-X-640x480-step75.h5 . . .
used augmentation
Finetune model: 100% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
  2/364 [..............................] - ETA: 38s - loss: 0.2386 - accuracy: 0.9219WARNING:tensorflow:Callbacks method `on_train_batch_end` is slow compared to the batch time (batch time: 0.0126s vs `on_train_batch_end` time: 0.1978s). Check your callbacks.
364/364 [==============================] - 390s 1s/step - loss: 0.3587 - accuracy: 0.8861 - val_loss: 0.2599 - val_accuracy: 0.9306
Epoch 2/20
364/364 [==============================] - 382s 1s/step - loss: 0.2516 - accuracy: 0.9195 - val_loss: 0.1440 - val_accuracy: 0.9591
Epoch 3/20
364/364 [==============================] - 610s 2s/step - loss: 0.1846 - accuracy: 0.9418 - val_loss: 0.1281 - val_accuracy: 0.9648
Epoch 4/20
364/364 [==============================] - 611s 2s/step - loss: 0.1587 - accuracy: 0.9469 - val_loss: 0.1170 - val_accuracy: 0.9697
Epoch 5/20
364/364 [==============================] - 610s 2s/step - loss: 0.1240 - accuracy: 0.9579 - val_loss: 0.1201 - val_accuracy: 0.9697
Epoch 6/20
364/364 [==============================] - 619s 2s/step - loss: 0.1076 - accuracy: 0.9652 - val_loss: 0.1156 - val_accuracy: 0.9694
3331.5 secs, validation accuracy = 0.969409
Save aug-X-640x480-step100.h5 . . .
Copy aug-X-640x480-step100.h5 to gs://yurybikuzin/car-classification/models/aug-X-640x480-step100.h5 . . .
Save aug-X-640x480.h5 . . .
Copy aug-X-640x480.h5 to gs://yurybikuzin/car-classification/models/aug-X-640x480.h5 . . .
Model based on aug-X-640x480 is ready
```

## 42-GPU

```python
prepare_models([
   {'code': 'aug-InceptionV3', 'base_class': tf.keras.applications.InceptionV3, 'size': (299, 299), 'augmentation': augmentation},
])
```

```
Prepare model based on aug-InceptionV3-299x299 . . .
used augmentation
base_model_class: <function InceptionV3 at 0x7fa5e0228048>
Downloading data from https://storage.googleapis.com/tensorflow/keras-applications/inception_v3/inception_v3_weights_tf_dim_ordering_tf_kernels_notop.h5
87916544/87910968 [==============================] - 1s 0us/step
Finetune model: 0% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
364/364 [==============================] - 505s 1s/step - loss: 1.5810 - accuracy: 0.4676 - val_loss: 1.1270 - val_accuracy: 0.6005
Epoch 2/20
364/364 [==============================] - 499s 1s/step - loss: 1.2220 - accuracy: 0.5610 - val_loss: 0.9943 - val_accuracy: 0.6440
Epoch 3/20
364/364 [==============================] - 500s 1s/step - loss: 1.1318 - accuracy: 0.5944 - val_loss: 0.9553 - val_accuracy: 0.6573
Epoch 4/20
364/364 [==============================] - 489s 1s/step - loss: 1.0658 - accuracy: 0.6198 - val_loss: 0.9365 - val_accuracy: 0.6640
Epoch 5/20
364/364 [==============================] - 473s 1s/step - loss: 1.0396 - accuracy: 0.6293 - val_loss: 0.9135 - val_accuracy: 0.6717
Epoch 6/20
364/364 [==============================] - 471s 1s/step - loss: 1.0171 - accuracy: 0.6355 - val_loss: 0.8981 - val_accuracy: 0.6805
Epoch 7/20
364/364 [==============================] - 470s 1s/step - loss: 0.9903 - accuracy: 0.6520 - val_loss: 0.8925 - val_accuracy: 0.6805
3466.2 secs, validation accuracy = 0.680463
Save aug-InceptionV3-299x299-step0.h5 . . .
Copy aug-InceptionV3-299x299-step0.h5 to gs://yurybikuzin/car-classification/models/aug-InceptionV3-299x299-step0.h5 . . .
used augmentation
Finetune model: 25% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
364/364 [==============================] - 464s 1s/step - loss: 0.8010 - accuracy: 0.7106 - val_loss: 0.6630 - val_accuracy: 0.7725
Epoch 2/20
364/364 [==============================] - 477s 1s/step - loss: 0.4232 - accuracy: 0.8455 - val_loss: 0.4247 - val_accuracy: 0.8542
Epoch 3/20
364/364 [==============================] - 486s 1s/step - loss: 0.3090 - accuracy: 0.8856 - val_loss: 0.4001 - val_accuracy: 0.8622
Epoch 4/20
364/364 [==============================] - 482s 1s/step - loss: 0.2396 - accuracy: 0.9119 - val_loss: 0.3031 - val_accuracy: 0.9010
Epoch 5/20
364/364 [==============================] - 480s 1s/step - loss: 0.1804 - accuracy: 0.9336 - val_loss: 0.2660 - val_accuracy: 0.9123
Epoch 6/20
364/364 [==============================] - 489s 1s/step - loss: 0.1555 - accuracy: 0.9414 - val_loss: 0.2545 - val_accuracy: 0.9149
Epoch 7/20
364/364 [==============================] - 482s 1s/step - loss: 0.1289 - accuracy: 0.9512 - val_loss: 0.2522 - val_accuracy: 0.9131
3402.8 secs, validation accuracy = 0.913111
Save aug-InceptionV3-299x299-step25.h5 . . .
Copy aug-InceptionV3-299x299-step25.h5 to gs://yurybikuzin/car-classification/models/aug-InceptionV3-299x299-step25.h5 . . .
used augmentation
Finetune model: 50% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
364/364 [==============================] - 470s 1s/step - loss: 0.4963 - accuracy: 0.8265 - val_loss: 0.3769 - val_accuracy: 0.8707
Epoch 2/20
364/364 [==============================] - 472s 1s/step - loss: 0.2490 - accuracy: 0.9080 - val_loss: 0.2516 - val_accuracy: 0.9144
Epoch 3/20
364/364 [==============================] - 479s 1s/step - loss: 0.1775 - accuracy: 0.9331 - val_loss: 0.1892 - val_accuracy: 0.9378
Epoch 4/20
364/364 [==============================] - 479s 1s/step - loss: 0.1297 - accuracy: 0.9511 - val_loss: 0.1714 - val_accuracy: 0.9445
Epoch 5/20
364/364 [==============================] - 479s 1s/step - loss: 0.0898 - accuracy: 0.9656 - val_loss: 0.1611 - val_accuracy: 0.9463
2423.6 secs, validation accuracy = 0.946272
Save aug-InceptionV3-299x299-step50.h5 . . .
Copy aug-InceptionV3-299x299-step50.h5 to gs://yurybikuzin/car-classification/models/aug-InceptionV3-299x299-step50.h5 . . .
used augmentation
Finetune model: 75% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
364/364 [==============================] - 484s 1s/step - loss: 0.3910 - accuracy: 0.8618 - val_loss: 0.5238 - val_accuracy: 0.8252
Epoch 2/20
364/364 [==============================] - 489s 1s/step - loss: 0.2120 - accuracy: 0.9233 - val_loss: 0.2314 - val_accuracy: 0.9257
Epoch 3/20
364/364 [==============================] - 489s 1s/step - loss: 0.1575 - accuracy: 0.9404 - val_loss: 0.2295 - val_accuracy: 0.9275
Epoch 4/20
364/364 [==============================] - 490s 1s/step - loss: 0.1143 - accuracy: 0.9559 - val_loss: 0.1883 - val_accuracy: 0.9411
Epoch 5/20
364/364 [==============================] - 501s 1s/step - loss: 0.0919 - accuracy: 0.9645 - val_loss: 0.1568 - val_accuracy: 0.9550
Epoch 6/20
364/364 [==============================] - 511s 1s/step - loss: 0.0725 - accuracy: 0.9722 - val_loss: 0.1409 - val_accuracy: 0.9542
Epoch 7/20
364/364 [==============================] - 520s 1s/step - loss: 0.0599 - accuracy: 0.9762 - val_loss: 0.1381 - val_accuracy: 0.9599
3533.3 secs, validation accuracy = 0.959897
Save aug-InceptionV3-299x299-step75.h5 . . .
Copy aug-InceptionV3-299x299-step75.h5 to gs://yurybikuzin/car-classification/models/aug-InceptionV3-299x299-step75.h5 . . .
used augmentation
Finetune model: 100% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
364/364 [==============================] - 537s 1s/step - loss: 0.3581 - accuracy: 0.8762 - val_loss: 0.2914 - val_accuracy: 0.9028
Epoch 2/20
364/364 [==============================] - 528s 1s/step - loss: 0.2038 - accuracy: 0.9231 - val_loss: 0.2009 - val_accuracy: 0.9337
Epoch 3/20
364/364 [==============================] - 521s 1s/step - loss: 0.1441 - accuracy: 0.9442 - val_loss: 0.1822 - val_accuracy: 0.9388
Epoch 4/20
219/364 [=================>............] - ETA: 3:20 - loss: 0.1112 - accuracy: 0.9549
```

## yb-GPU

```python
prepare_models([
   {'code': 'aug-NASNetMobile', 'base_class': tf.keras.applications.NASNetMobile, 'size': (224, 224), 'augmentation': augmentation},  
])
```

```
Prepare model based on aug-NASNetMobile-224x224 . . .
used augmentation
base_model_class: <function NASNetMobile at 0x7f0952a53c80>
Finetune model: 0% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
364/364 [==============================] - 333s 913ms/step - loss: 1.8469 - accuracy: 0.3735 - val_loss: 1.4525 - val_accuracy: 0.4661
Epoch 2/20
364/364 [==============================] - 325s 892ms/step - loss: 1.5398 - accuracy: 0.4460 - val_loss: 1.3910 - val_accuracy: 0.4951
Epoch 3/20
364/364 [==============================] - 334s 916ms/step - loss: 1.4726 - accuracy: 0.4694 - val_loss: 1.3242 - val_accuracy: 0.5157
Epoch 4/20
364/364 [==============================] - 336s 922ms/step - loss: 1.4269 - accuracy: 0.4833 - val_loss: 1.3135 - val_accuracy: 0.5180
Epoch 5/20
364/364 [==============================] - 336s 923ms/step - loss: 1.4092 - accuracy: 0.4876 - val_loss: 1.3120 - val_accuracy: 0.5190
1726.8 secs, validation accuracy = 0.519023
Save aug-NASNetMobile-224x224-step0.h5 . . .
Copy aug-NASNetMobile-224x224-step0.h5 to gs://yurybikuzin/car-classification/models/aug-NASNetMobile-224x224-step0.h5 . . .
used augmentation
Finetune model: 25% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
364/364 [==============================] - 332s 913ms/step - loss: 1.1263 - accuracy: 0.5987 - val_loss: 1.5897 - val_accuracy: 0.5195
Epoch 2/20
364/364 [==============================] - 328s 901ms/step - loss: 0.6946 - accuracy: 0.7491 - val_loss: 1.6834 - val_accuracy: 0.5578
Epoch 3/20
364/364 [==============================] - 333s 915ms/step - loss: 0.5409 - accuracy: 0.7993 - val_loss: 1.0639 - val_accuracy: 0.6758
Epoch 4/20
364/364 [==============================] - 333s 916ms/step - loss: 0.4356 - accuracy: 0.8399 - val_loss: 0.8054 - val_accuracy: 0.7326
Epoch 5/20
364/364 [==============================] - 334s 919ms/step - loss: 0.3745 - accuracy: 0.8632 - val_loss: 0.8636 - val_accuracy: 0.7216
Epoch 6/20
364/364 [==============================] - 334s 917ms/step - loss: 0.3219 - accuracy: 0.8835 - val_loss: 0.8103 - val_accuracy: 0.7386
2051.3 secs, validation accuracy = 0.73856
Save aug-NASNetMobile-224x224-step25.h5 . . .
Copy aug-NASNetMobile-224x224-step25.h5 to gs://yurybikuzin/car-classification/models/aug-NASNetMobile-224x224-step25.h5 . . .
used augmentation
Finetune model: 50% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
364/364 [==============================] - 333s 914ms/step - loss: 0.5992 - accuracy: 0.7823 - val_loss: 1.4119 - val_accuracy: 0.6008
Epoch 2/20
364/364 [==============================] - 328s 901ms/step - loss: 0.3630 - accuracy: 0.8662 - val_loss: 1.4579 - val_accuracy: 0.5859
Epoch 3/20
364/364 [==============================] - 337s 927ms/step - loss: 0.2626 - accuracy: 0.9039 - val_loss: 0.8446 - val_accuracy: 0.7116
Epoch 4/20
364/364 [==============================] - 339s 933ms/step - loss: 0.2064 - accuracy: 0.9226 - val_loss: 0.6233 - val_accuracy: 0.7864
Epoch 5/20
364/364 [==============================] - 339s 931ms/step - loss: 0.1618 - accuracy: 0.9390 - val_loss: 0.4456 - val_accuracy: 0.8509
Epoch 6/20
364/364 [==============================] - 339s 933ms/step - loss: 0.1391 - accuracy: 0.9461 - val_loss: 0.3927 - val_accuracy: 0.8733
Epoch 7/20
364/364 [==============================] - 339s 931ms/step - loss: 0.1230 - accuracy: 0.9526 - val_loss: 0.3255 - val_accuracy: 0.8959
Epoch 8/20
364/364 [==============================] - 339s 931ms/step - loss: 0.1049 - accuracy: 0.9598 - val_loss: 0.3244 - val_accuracy: 0.8884
Epoch 9/20
364/364 [==============================] - 339s 930ms/step - loss: 0.1007 - accuracy: 0.9624 - val_loss: 0.2949 - val_accuracy: 0.8982
3091.0 secs, validation accuracy = 0.898201
Save aug-NASNetMobile-224x224-step50.h5 . . .
Copy aug-NASNetMobile-224x224-step50.h5 to gs://yurybikuzin/car-classification/models/aug-NASNetMobile-224x224-step50.h5 . . .
used augmentation
Finetune model: 75% trainable
batch_size: 32, steps_per_epoch: 364, epochs: 20
Epoch 1/20
364/364 [==============================] - 340s 933ms/step - loss: 0.3787 - accuracy: 0.8653 - val_loss: 1.9941 - val_accuracy: 0.5031
Epoch 2/20
364/364 [==============================] - 337s 927ms/step - loss: 0.2352 - accuracy: 0.9155 - val_loss: 0.9713 - val_accuracy: 0.6848
Epoch 3/20
364/364 [==============================] - 345s 946ms/step - loss: 0.1679 - accuracy: 0.9381 - val_loss: 0.6374 - val_accuracy: 0.7789
Epoch 4/20
115/364 [========>.....................] - ETA: 3:57 - loss: 0.1189 - accuracy: 0.9571
```
