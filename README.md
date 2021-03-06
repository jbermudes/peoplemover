# People Manager
By Jess Bermudes

## How to Build

Clone the repo:

    $ git clone https://github.com/jbermudes/peoplemover.git

Change into the project directory:

    $ cd peoplemover

Setup the container:

    $ docker-compose build

Set up the databases:

    $ docker-compose run web rails db:create


    $ docker-compose run web rails db:migrate

## How to Run

Launch the docker container with:

    $ docker-compose up

When you are finished evaluating the application, close the server with Ctrl+C

## How to Test

Open a browser and navigate to `http://localhost:3000`

This will take you to the Index of the People resource. 
From this page, you can create a New People record and manage existing records, including update and deletion functionality.

## General Approach

This webapp is built using Ruby on Rails 7 with minimal modifications to the
sample Rails scaffolding in order to accomplish the requirements of the task.

This solution includes basic CRUD functionality over an HTTP REST API including
some basic server-side validations for the presence and format of the various Person
attributes. 

This solution uses Rails' development environment features for execution including the Puma Simple HTTP Web Server and the SQLite3 database.


## Incomplete Functionality

Because of the limited scope of this assignment, there is much that can be
improved upon. 

* The biggest limitation is that this solution is not
production-ready and uses Rails local-environment facilities so proper web
server and database support is not currently configured. 

* as requested there is no authentication or authorization
functionality.

* There are very few precautions for SQL injection, XSS, and other attacks besides the basic protection that Rails offesr out of the box so this app is still to be considered vulnerable until a more thorough analysis and prevention is implemented.

* There is practically no UI work other than the basic styling of a default
  Rails app

## Assumptions

A few assumptions were taken:

* Birthday is stored internally as a date field although it was not specified
  if the year is intended to be stored. Date was chosen for future-proofing.

* The email validation is as generous as it can get. It only checks for the
  presence of printable characters with an @ sign somewhere in the middle

## References Used

Dockerize Rails Application: https://www.codewithjason.com/dockerize-rails-application/ 

StackOverflow "Cannot connect to Docker Daemon on macOS": https://stackoverflow.com/questions/44084846/cannot-connect-to-the-docker-daemon-on-macos

Rails ActiveRecord Validations: https://guides.rubyonrails.org/active_record_validations.html

Rails ActiveRecord Data Types: https://michaelsoolee.com/rails-activerecord-data-types/

Rails Command Line Reference Manual: https://guides.rubyonrails.org/command_line.html#bin-rails-generate


