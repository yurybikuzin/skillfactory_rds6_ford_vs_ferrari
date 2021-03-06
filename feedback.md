# Feedback

Oleg Zyablov:tophat:  8:00 PM

Привет! Анна Нохрина попросила меня обсудить с вами решение проекта Ford vs Ferrari. Посмотрел, очень классно, пришли в голову некоторые мысли и я их написал:

Полновязный слой Dense(256) добавляет очень много весов модели и усиливает переобучение. Мне удавалось достичь более высокой точности на валидации без полносвязного слоя. Предобученные модели в модуле keras.applications тоже не используют скрытые полносвязные слои. На самом деле можно даже пойти дальше и не использовать слой Dense(10) в конце модели, а использовать в качестве logit-ов выход слоя GlobalMaxPooling2D. Но поскольку этот слой выдает вектор длиной больше 10, его надо обрезать, то есть брать первые 10 элементов. Я так делать пока не пробовал, это можно попробовать сделать функцией tf.slice, либо попробовать так:
```
model.add(tf.keras.layers.Lambda(lambda x: x[:10]))
```

Learning rate по-моему у вас слишком быстро убывает: каждые 100 батчей на 0.9. Так через несколько тысяч батчей он может стать настолько мал, что модель перестанет обучаться.

Оптимизатор Adam хорош, но самым лучшим оптимизатором считается обычный SGD с моментом - он позволяет достичь самой высокой генерализации (обобщающей способности) модели, однако очень чувствителен к настройке гиперпараметров. Недавно появился оптимизатор AdaBound - это Adam, переходящий в SGD с моментом в течение обучения. Он показывает результаты лучше Adam на задачах компьютерного зрения, при этом слабо чувствителен к гиперпараметрам.

В ноутбука, который я выкладывал на Kaggle, у меня много сложных функций с большим количеством параметров, вроде get_dataset. У вас функция train_model принимает около 20 параметров. Постепенно я понял, что это неудобно, лучше писать больше простых функций, чем одну сложную. Сейчас я тренирую модели с помощью простой model.fit() без оберток-монстров с 20 параметрам, и это удобно.

Заметил, что у вас мало аугментаций. Например нет аффинной трансформации. Если не использовать TPU и использовать Albumentations, то аугментации делаются гораздо легче: https://pastebin.com/raw/kPAz9kAN

Нормализацию в датасете делать вообще не стоит, это удобнее делать в самой модели, например так:
```
model.add(L.Activation(lambda x: x / 128 - 1))
```

Тем более что некоторые модели, такие как EfficientNet, не требуют нормализации.

TPU это интересно, но я в итоге от него отказался. Главная причина - TPU не поддерживает выполнение функций python, поэтому либо функции аугментации приходится либо создавать в виде графа Tensorflow, либо делать аугментации на другой машине, загружать изображения с ними на GS bucket и оттуда скачивать на TPU. Второй способ неудобен тем, что много данных передается по сети, а первый тем, что алгоритмы аугментации нужно писать самостоятельно и код получается сложным.

Плюс TPU в том, что доступно очень много памяти, и можно обучать большими батчами. Но это же и минус: создавая код для TPU программист не заботится об оптимизации памяти, вследствие чег о код может быть сложно перенести на GPU. Большой батч - тоже минус, исследования показывают, что большой размер батча увеличивает переобучение модели, то есть лучшие результаты достигаются при обучении маленькими батчами.
