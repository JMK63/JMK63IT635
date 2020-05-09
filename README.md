# JMK63IT635
JMK63@NJIT.EDU IT635 project repository

James Kocur
IT635 Spring 2020



ReadMe. 

run "docker-compose up" from the downloaded directory to run the application

DB will be automatically created from the sql file in the "db" directory. 

There are several movies, transactions, and customers already added to the database as examples for searching purposes.


Database name: VHS_Rental

UN: root
PW it635

Database accessible via adminer : http://127.0.0.1:8080

Homepage accessible by going to : http://127.0.0.1:8888/Home.html


There are 4 HTML pages linked from the homepage and accompanying PHP pages to execute SQL queries/functions

The basic function of this web based interface is to allow the searching of a VHS rental database by movie name/Genre, to create a new customer profile, to add a movie to the database, and to rent a movie from inventory. 

All html and php pages can be found in the www directory. 

Home.html
- this page acts as a hub to all the other html pages. There is a link on each page to return to the homepage

Search.html / SearchName.php / SearchGenre.php
- A button is included to list all results in inventory
- the html pages are all simple forms with declared IDs that the corresponding php pages with use. 
- SearchName.php allows for searching the Movie table  by inputing the name or part of the name of a movie. if there is a movie found it will show the results of which can then be used on the movie rental page to rent a movie. 
- SearchGenre.php allows for searching by a match of the genre column of the Movies Table
- searching by name or genre only will require partial entries. for example, searching for night of thie living deead by name will only require you to input "night" tpo pull up the result. 


AddMovie.html / AddMovie.php
- this page contains fields to allow the user to add a new movie to the database. The movie ID is auto incremented

Rentmovie.html / Rentmovie.php
- this page allows the transaction/rental of a movie from the database using the movie ID, Customer ID, rental rate, and the quantity. 
- a new entry is added to the Rental table and the stock amount field is updated by subtracting whatever value is input in the quanity field from the stock amount column in the Movies table by the matching movie ID. 
- use the search movie and customer functions to determine the movie ID, rate, and rent duration specified for each move as well as the customer ID to enter the information required for the transaction.

AddCustomer.html / AddCustomer.php
- This pages allow the user to create a new entry in the Customers table.

SearchCustomer.html / SearchFName.php / SearchLName.php / SearchAddress.php / SearchPhoneNumber.php / SearchEmail.php
- a button is icluded to search all customer results
- fields are invluded to search by first name, last name, address, phone number and email
- searching by phone number requires entering the entire correct phone number. all other fields can enter partial (like) entries. 

