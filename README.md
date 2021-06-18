# README
* Ruby version
Using version 3.0.1

* Getting Started:

First you'll want to make sure to create a '.env' file at the root of this directory for your Postgresql database (you may want to confirm you've created a Postgres user and have the database server started).  Create Environmental variables for your credentials and add this file to your .gitignore file.  The example names for the existing variables can be found under 'config > database.yml'

Run a 'bundle install' to add in the dependencies from the Gemfile.

Then begin setting up the database with 'rails db:create' and run your migrations with 'rails db:migrate'.  You can also use the provided seed data to fill your database with a few users and Workdays using 'rails db:seed'  Passwords for these users are not secure and can be found under 'db > seeds.rb' 

To begin hosting, run 'rails s' and your API will be addressed locally at localhost:3000
The data should then be ready to be reached by your frontend platform.



