# People Manager

## How to Build

## How to Run

## How to Test

## General Approach

This webapp is built using Ruby on Rails 7 with minimal modifications to the
sample Rails scaffolding in order to accomplish the requirements of the task.
This solution includes basic CRUD functionality over an HTTP REST API including
some basic server-side validations for the presence and format of the various Person
attributes. 



## Incomplete Functionality

Because of the limited scope of this assignment, there is much that can be
improved upon. 

* The biggest limitation is that this solution is not
production-ready and uses Rails local-environment facilities so proper web
server and database support is not currently configured. 

* as requested there is no authentication or authorization
functionality.

* There is practically no UI work other than the basic styling of a default
  Rails app

## Assumptions

A few assumptions were taken:

* Birthday is stored internally as a date field although it was not specified
  if the year is intended to be stored. Date was chosen for future-proofing.

* The email validation is as generous as it can get. It only checks for the
  presence of printable characters with an @ sign somewhere in the middle

