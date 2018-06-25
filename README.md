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
