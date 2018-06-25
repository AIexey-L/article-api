# README

## тестовое задание
В качестве тестового задания предлагаю реализовать один интересный endpoint с несколькими методами.

Предположим у нас есть сущность `Article`, у нее есть `title` (string) и `description` (text). Также у `Article` есть количество лайков - `likes_count` (integer) и дизлайков - `dislikes_count` (integer).

Необходимо реализовать RESTful JSON API для методов articles#index, articles#like и articles#dislike

По условиям задачи ко всем этим методам может быть много одновременных обращений.

Для реализации можно использовать любые гемы. За хорошие тесты бонусные очки.


## how to start application

1. clone repo
2. `bundle install`
3. `rails db:seed`
4. `rails s`

## routes
- GET /articles
- POST /articles (params - title, description)
- GET /articles/:id
- PUT /articles/:id (params - title, description)
- DELETE /articles/:id
- GET /articles/:id/likes
- GET /articles/:id/dislikes

## комментарии
Данная реализация только для возможности читать количество лайков/дизлайков.
Если далее надо добавлять лайки/дизлайки, надо будет вынести создание лайков/дизлайков
в отдельные контроллеры со своими whitelist параметрами. Дальнейшая реализация будет зависеть
также от ответов на вопросы: по сколько лайков/дизлайков добавляется за один запрос? Нужно ли отдавать
лайки/дизлайки вместе с articles?
- 
