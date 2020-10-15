# Сборка production-образа и деплой


<!-- vim-markdown-toc Redcarpet -->

* [Сборка](#сборка)
* [Деплой](#деплой)
* [Процедура деплоя на heroku](#процедура-деплоя-на-heroku)
    * [Ссылки](#ссылки)
* [Локальный деплой](#локальный-деплой)

<!-- vim-markdown-toc -->

## Сборка

Для сборки образа использовался скрипт [docker-image.sh](docker-image.sh)

```
./docker-image.sh prod flask
```

## Деплой 

Деплой производился на [heroku.com](https://heroku.com): https://morning-dusk-31577.herokuapp.com/ 

## Процедура деплоя на heroku

```
sudo snap install heroku --classic
heroku login
heroku container:login
mkdir ~/recommend_deploy
cd ~/recommend_deploy
heroku create # команда вернула morning-dusk-31577
export heroku_app=morning-dusk-31577
git init
heroku git:remote -a $heroku_app
docker tag bazawinner/prod-recommend-flask:9 registry.heroku.com/$heroku_app/web
docker push registry.heroku.com/$heroku_app/web
heroku container:release web
heroku open
```

### Ссылки 
- https://devcenter.heroku.com/articles/container-registry-and-runtime
- https://help.heroku.com/PPBPA231/how-do-i-use-the-port-environment-variable-in-container-based-apps

## Локальный деплой

Лучшим вариантом знакомства с production-сервисом будет разворачиваине его на локальной машине следующей командой:

```
docker rm fovsfe; docker run -it --name fovsfe -e PORT=9000 -p 42450:9000 bazawinner/prod-fovsfe-flask:1
```

Результат можно увидеть в браузере: http://localhost:42450


