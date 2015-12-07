# SinatraShoppingList
A CRUD shopping list that allows the user to add, update, and delete items from said list. (user_name: guest, password: 1111)

<p align="center">
  <img src="https://github.com/mrbeewer/SinatraShoppingList/blob/master/screenshots/ShoppingList_Login-Register_6Dec2015.png?raw=true" alt="Shopping List: Login-Register View"/>
  <img src="https://github.com/mrbeewer/SinatraShoppingList/blob/master/screenshots/ShoppingList_ListView_6Dec2015.png?raw=true" alt="Shopping List: List View"/>
  <img src="https://github.com/mrbeewer/SinatraShoppingList/blob/master/screenshots/ShoppingList_UpdateView_6Dec2015.png?raw=true" alt="Shopping List: Update View"/>
</p>

### Technology:
* HTML & CSS
* Embedded Ruby for View management
* Sinatra - MVC and Sessions
* Postgresql - Database management
* BCrypt - User Authentication

### Approach:
* Ruby Controllers
  * ApplicationController - connect to the database and hold helper functions
  * HomeController - control the root landing page
  * UserController - contain routes for user creation, log on/off
  * ItemsController - contain routes that interface with the database (create, read, update, destroy)

### Change Log:
* Basic Encryption Added - 3Dec2015
* Basic User Login / Registration Added - 3Dec2015
* Updated Styling - 6Dec2015
* Updated Notice page to redirect in 3seconds - 6Dec2015
* Individual Tables for each User - 6Dec2015

### Coming Improvements:
* Update the "refresh in 3 seconds" to show the time remaining
* Improve responsive-ness (table issues on when the window is too small)
