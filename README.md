# Ivory Coast Music API Project
This project is an API for a hypothetical music store called Ivory Coast Music. It enables all users to (1) view a list of all store items, (2) view individual items, (3) view a list of all events, and (4) view individual events and get information about them. Filtering, ordering, and search are also enabled for the lists.
<br><br>
In addition to this, authenticated users are able to create bookings for trial lessons. 
<br><br>
With the django admin panel, administrators can perform CRUD operations on events, store items, venues, and trial bookings.
<br><br>
Thank you for viewing my project. Enjoy!
<p>&nbsp;</p>

# Setting up project
## 1. Activate virtual environment
Navigate to the django project directory and use command `source venv/bin/activate` to activate the virtual environment.
## 2. Install dependencies
Dependencies are written in requirements.txt and can be downloaded using `python3 -m pip install -r requirements.txt` from within the django project directory.
## 3. Create database
Back out to repository directory, and use `mysql < dump.sql` to copy the project database to your machine.
## 4. Configure database
Open settings.py. Under `DATABASES`, ensure that `USER` and `PASSWORD` match a mysql user on your machine, and ensure that this user has permission to access the `ivory_coast` database with all privileges. The easiest way to do this is to use the `root` user.
## 5. Run migrations and start server
<p>&nbsp;</p>

# Users
## testuser
* type: admin/superuser
* username: 'testuser'
* password: 'lemon@123!'

## bettycrocker
* type: client
* username: 'bettycrocker'
* password: 'ilovecooking'
<p>&nbsp;</p>

# Endpoints

## Django admin
`admin/`

## Djoser/authentication
`auth/users`<br>
`auth/users/me`<br>
`auth/token/login`

## Store
`store`
* GET: list all store items
* Filters: `price__lte`, `price__gte`
* Ordering: `price`, `featured`
* Search: `title`

`store/<int:pk>`
* GET: display store item with given pk

## Lessons
`events`
* GET: display all events
* Filters: `date__lte`, `date__gte`
* Ordering: `date`
* Search: `name`, `venue__name`, `venue__address`

`events/<int:pk>`
* GET: display event with given pk

`book`
* POST: create new trial booking