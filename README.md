# BreatheFree
Raising Awareness of Air Pollution in the UK.

## Group Members
Faizan Mohiuddin (51874279)

Andrei Rotariu (51876039)

Paraskevas Kleanthous (51874763)

## Live Version
Available on heroku at:
> ```https://stark-refuge-13120.herokuapp.com```

## Running the Application Locally
1. > cd in to the airquality folder
2. > run ```bundle install``` on terminal
3. > migrate the database by running ```rails db:migrate```
4. > seed the region database using ```rake region:seed_region```
5. > seed the diseases database using ```rake region:seed_diseases```
6. > (optional to have visual on database) seed the average database using ```rake region:seed_average``` 
7. > start the application with ```rails s```
8. > to access the application, open your web browser, type ```http://localhost:3000``` in to the address bar


## Features Included:
1. Two linked tables (regions and disease_records).
2. User defined graphs using the open data. (accessed through /historical/index)
3. Map using live API Data. (on homepage - /airquality/index)
4. API, which returns JSON object, is provided. To view:
    * Open the webpage in firefox.
    * Go to '/api/v1/disease_records'.
    * JSON list is shown and can then be downloaded as JSON item.
5. Bootstrap is fully integrated.
    * Containers are also used so that the app automatically adjusts to mobile screens.
6. Application is deployed on Heroku using a postgresql database format.


## Known Issues

#### Issue #1

The map in the homepage (localhost:3000) sometimes does not load.

**Solution:** Simply refresh the page.

#### Issue #2

Although very uncommon, you may come accross a Rails ParserError when loading the homepage (localhost:3000).

**Solution:** Simply refresh the page.

### Issue #3

Sometimes an error relating to the 'pg' gem is shown.

**Solution:**
Type in the following commands in linux terminal:
- ```sudo apt-get install postgresql-client libpq5 libpq-dev```
- ```sudo gem install pg```

### Issue #4

Open data source is not large enough (doesn't have 2000-3000 records). \
We couldn't find enough _free_ data that was relevant enough to \
our awareness-raising vision so we made do with what we could find.

## Data sources
Open Data:
- Data was manually created into a csv with information from:
> https://statistics.blf.org.uk

Live API Data:
- Used free 5 call per minute package from:
> https://www.airvisual.com/air-pollution-data-api


## Contribution

It was unanimously agreed that everyone contributed equally \
and that marks should be distributed equally. \
\
Signed:

- [x] Andrei
- [x] Faizan
- [x] Paraskevas
