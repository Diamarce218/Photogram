# Photogram

This is an example repository project, in order to practice the abilities as a FullStack Web Developer. Inspired by the Instagram Web Page aesthetic. This project allows the creation and authentication of Users, Creation of post with several parameters (Description, Location and Add an Image file) As well with a basic interaction with the posted publication through comments and likes.

## Getting Started

These instructions will get you a copy of the project up and run on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Make sure you have these elements and software shown below before cloning the repository

```
ruby 2.5.
```
*A database service* in this project was used
```
postgreSQL 4.0
```

### Installing

The first step is to Clone this repository:

```
git clone https://github.com/Diamarce218/Photogram
```

Use `bundle install` in the command line to make sure having all the gems needed in this project.

Use `rails db:migrate` in the command line to starts all the migrations of the database.


Use `rails s`  in the command line to starts the server.

Go to a Browser an put in the url `http://localhost:3000/posts` to get access to the page.

Now you will be able to interact with all the functionalities of *Photogram*


## Running the tests

This project counts with a set of tests for the *Models* and the *features* such as Posting and User Authentication.
For testing purposes we use the *gem rpesc* wich is already at the *Gemfile*, the fastest way to run all the tests is:

```
rspec spec
```

### **Features Tests**. 

##### Feature Authentication Test
```
rspec spec/features/authentication_spec.rb
```

Use `rspec spec/features/authentication_spec.rb` in the command line to run this test.

*Feaure Authentication Test* Warranties that the only way to interact with the page is after a **User Log In**.

##### Feature Posting Test
```
rspec spec/features/posting_spec.rb
```

Use `rspec spec/features/posting_spec.rb` in the command line to run this test.

*Features Posting Test* test the **creation post** feature runs correctly.


### **Model Tests**. 

##### Model Comments Test
```
rspec spec/models/comment_spec.rb
```

Use `rspec spec/models/comment_spec.rb` in the command line to run this test.

*Model Comments Test* Warranties that the COMMENT will be Submitted at least with the **Required Parameters** fulfilled (User_id, Comment, Post_id). It also tests the different scenarios when the comment's parameters return an *"invalid without"*.

##### Model Posts Test
```
rspec spec/models/post_spec.rb
```

Use `rspec spec/models/post_spec.rb` in the command line to run this test.

*Post Comments Test* Warranties that the POST will be Submitted at least with the **Required Parameters** fulfilled (User_id, Description, Image). It also tests the different scenarios when the post's parameters return an *"invalid without"*.


## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Ruby](https://www.ruby-lang.org/es/) - The Program Language used
* [Javascript](https://www.javascript.com/) - Used to make the page functional
* [Devise](https://github.com/plataformatec/devise) - Used to views&Authentications
* [Rspec](https://github.com/rspec/rspec-rails) - Used to generate test
* [PostgreSQL](https://www.postgresql.org/) - The Server used


## Authors

* **Diana Herrán** - *Initial work* - [PurpleBooth](https://github.com/Diamarce218)


## Acknowledgments

* Inspiration [Instagram](https://www.instagram.com/)
