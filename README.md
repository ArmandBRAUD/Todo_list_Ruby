# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



Using cmd:

rails new todo_app -d postgresql    --create an ape with postgreSQL

cd /todo_app

rails db:create    -- create the database and database test

rails generate model Task title:string description:text completed:boolean       --génère un modèle et une migration

rails db:migrate    --applique la migration

rails console   -- ouvre une console rails

Task.create(title: "Acheter du pain", description: "Aller à la boulangerie", completed: false)
Task.last

test les commande