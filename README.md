# airquality
Mapping Air Quality In the UK

Live version available on heroku at:
```https://frozen-harbor-77500.herokuapp.com```

## Running the Application Locally
- > cd in to the airquality folder
- > run ```bundle install``` on terminal
- > migrate the database by running ```rails db:migrate```
- > seed the database using ```rake regions:seed_regions```
- > seed the database using ```rake regions:seed_diseases```
- > start the application with ```rails s```
- > to access the application, open your web browser, type ```http://localhost:3000``` in to the address bar

## Group Members
Faizan Mohiuddin (51874279)

Andrei Rotariu (51876039)

Paraskevas Kleanthous (51874763)

## Known Issues

#### Issue #1

The map in the homepage (localhost:3000) sometimes does not load.

**Solution:** Simply refresh the page.

#### Issue #2

Although very uncommon, you may come accross a Rails ParserError when loading the homepage (localhost:3000).

**Solution:** Simply refresh the page.

## Contribution

Faizan 33.3%
Andrei 33.3%
Paraskevas 33.3%
