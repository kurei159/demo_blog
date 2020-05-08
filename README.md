# README

* Ruby version 
ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]

* Extra gems used:
- bulma-rails
- simple forms (Run rails generate simple_form:install)
- better errors
- binding of caller
- guard
- guardlivereload

Bulma:
- @import "bulma"; in application.scss

To run guard livereload for monitoring:
>guard init livereload
>bundle exec guard

* When using simple form
- Make wrapper false, as it has its own wrapper

* Database: Sqlite3
- Check db/migrate

* To Check CRUD Actions:
>rake routes

* Creating new controller
>rails new controller <name>
>create action in controller.rb
>create page in view
>route page

* Creating new model
>rails new model <name> <dataname: datatype>
>rails db:migrate

* Relations
- In post.rb and comment.rb model

