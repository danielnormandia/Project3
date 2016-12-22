* ...
Welcome to Boolean!
A community based app for music curated by users for users.

Our team has integrated an array of technologies in order to produce a 
functional, fun and community inclusive app.


Ruby on Rails
----------------
Ruby 2.2.3p173 combined with Rails 5.0.0.1 was used to create application
and database functionality.


Javascript/JQuery
------------------
Javascript and JQuery were gracefully integrated into our front-end.

System Dependencies
--------------
Our app has used a carefully selected bundle to create a unique
user experience. They include:
  OAuth
  bcrypt (~> 3.1.7)
  byebug
  coffee-rails (~> 4.2)
  faker
  httparty
  jbuilder (~> 2.5)
  jquery-rails
  listen (~> 3.0.5)
  pg (~> 0.18)
  pry-rails
  puma (~> 3.0)
  rails (~> 5.0.0, >= 5.0.0.1)
  rspotify
  sass-rails (~> 5.0)
  turbolinks (~> 5)
  tzinfo-data
  uglifier (>= 1.3.0)
  web-console

API and other Services
------------------
Spotify's comprehensive music catalog was accessed for use in our app
via the Spotify Web API. This opens our app up to access potentially 
millions of users through Spotify's vast user-related data.

Convention over Configuration
--------------------------
Our app uses rails convention. This allowed us to get a functional app
up and running in a short period of time while allowing us to use rails'
most powerful features.

Database Models Links to images

Database
----------
Our database uses ActiveRecords' Postgresql's power 
to support our growing user base.

Models
------------
The app uses three tables in the database:
-Comment
-Mood
-User

Deployment
-------------
Heroku was used to deploy our app.
