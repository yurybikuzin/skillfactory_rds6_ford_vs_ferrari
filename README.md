![Title PNG "Skill Factory"](/assets/skillfactory_logo.png)
# Проект №6. Ford vs Ferrari

<!-- vim-markdown-toc Redcarpet -->

* [Команда](#команда)
* [Задача](#задача)
* [Ноутбук](#ноутбук)
* [Leaderboard](#leaderboard)
* [Production-сервис](#production-сервис)
    * [Как посмотреть?](#как-посмотреть)
        * [На heroku.com](#на-heroku-com)
        * [На локальной машине](#на-локальной-машине)
    * [Процедура деплоя](#процедура-деплоя)
* [Реализованные идеи](#реализованные-идеи)
* [Сложности](#сложности)

<!-- vim-markdown-toc -->


## Команда

TWAS (Together We Are Strong): 
- [Shuler](https://sfdatasciencecourse.slack.com/archives/D017GFWS42V)
- [Denis Volkov](https://sfdatasciencecourse.slack.com/archives/D01751QRQDR)
- [yury bikuzin](https://sfdatasciencecourse.slack.com/archives/D017E787B7S)

## Задача

https://www.kaggle.com/c/sf-dl-car-classification/overview

## Ноутбук

https://colab.research.google.com/drive/1qpNQKSk95MsCIwKENckm_qIF7LvWhEF6?usp=sharing

## Leaderboard

https://www.kaggle.com/c/sf-dl-car-classification/leaderboard

## Production-сервис

### Как посмотреть?

#### На heroku.com

https://morning-dusk-31577.herokuapp.com/

#### На локальной машине

Лучшим вариантом знакомства с production-сервисом будет разворачиваине его на локальной машине следующей командой:

```
docker rm fovsfe; docker run -it --name fovsfe -e PORT=9000 -p 42450:9000 bazawinner/prod-fovsfe-flask:1
```

Результат можно увидеть в браузере: http://localhost:42450

### Процедура деплоя

[Процедура деплоя](go-to-production.md)

## Реализованные идеи

Важным источником вдохновения являлся ноутбук Олега Зяблова ([part1](https://www.kaggle.com/olegzyablov/classification-using-tpu-and-tf-dataset-part-1), [part2](https://www.kaggle.com/olegzyablov/classification-using-tpu-and-tf-dataset-part-2)

1. Было принято решение использовать TPU, потому что этот вариант дает самую большую скорость обучения. Метод подготовки данных для TPU был заимствован у Олега

2. Были использованы аугментация данных (аугментировались как данные, использованные для обучения, так и валидационные данные для создания большего стресса у обучаемой модели), transfer learning (фиксация базовой модели и обучение только головы), 4-ступенчатый fine-tuning (с последовательным обучением 25%, 50%, 75% и 100% слоев базовой модели) и стекинг. В качестве головы была использована модель из ноутбука Олега. В качестве базовой поочередно (для стекинга) использовались следующие модели: Xception, InceptionResNetV2, InceptionV3

3. Моделью, полученной в результате стекинга были размечены тестовые данные, что увеличило размер обучающей выборки с 15561 до 22236 изображений. Полученный датасет был использован для обучения трех моделей с применением аугментации данных(аугментировались как данные, использованные для обучения, так и валидационные данные для создания большего стресса у обучаемой модели), transfer learning'а и 4-ступенчатого fine-tuning'а. Стекинг обученных моделей был использован для подготовки финального submission'а

## Сложности

При деплое в production пришлось столкнуться со [следующией сложностью](https://www.onooks.com/tensorflow-keras-model-served-by-a-flask-app-uwsgi-gets-stuck-in-model-predict/)

Были вынуждены отказаться от использования uwsgi в пользу development flask

Поэтому полноценным production'ом полученный [результат](https://evening-badlands-35661.herokuapp.com/) назвать нельзя

Это, скорее, МVP. В том числе и потому, что для него использовалась модель, обученная на NASNetMobile. Это было сделано из опасения, что heroku не выдержит три более тяжелые модели, памятуя об [предыдущем опыте](https://github.com/yurybikuzin/skillfactory_rds4_recommendation_challenge)








