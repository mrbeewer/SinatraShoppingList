# SinatraShoppingList
A CRUD shopping list that allows the user to add, update, and delete items from said list.

![Screen shot of ShoppingList](https://github.com/mrbeewer/SinatraShoppingList/blob/master/screenshots/ShoppingList_Login-Register_3Dec2015.png)

![Screen shot of ShoppingList](https://github.com/mrbeewer/SinatraShoppingList/blob/master/screenshots/ShoppingList_ListView_3Dec2015.png)


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

### Coming Improvements:
* Connect / Link Tables appropriately for users
