# News App Api

[![Coverage Status](https://coveralls.io/repos/github/Maxcutex/news_app_api/badge.svg?branch=master)](https://coveralls.io/github/Maxcutex/news_app_api?branch=master)
[![Maintainability](https://api.codeclimate.com/v1/badges/bc6d612ca2cec6eee90a/maintainability)](https://codeclimate.com/github/Maxcutex/news_app_api/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/bc6d612ca2cec6eee90a/test_coverage)](https://codeclimate.com/github/Maxcutex/news_app_api/test_coverage)

News App api is an application that manages stock news and analysis.

https://stock-news-app.herokuapp.com/

The application allows yours to view analysis about stocks, daily price list.

## Usage

Using [Ruby Version Manager](https://rvm.io/rvm/install) download and install the latest version of ruby, which can be downloaded from [here](https://www.ruby-lang.org/en/downloads/).

The application is built with Ruby on Rails

To clone the respository execute the following command.

```
git clone https://github.com/maxcutex/news-app-api.git
```

Navigate into the cloned project directory.

Edit the `env-sample` file with your gmail creadentials and save it as `.env`

Change the parameters in there to your own settings e.g SEND GRID KEY

On the prompt execute the following

```
export $(cat .env)
```

Execute the following code to install all the application dependencies.

```
bundle install
```

Execute the following code to migrate all data tables/object

```
rails db:migrate
```

Execute the following code to seed data

```
rails db:seed
```

Execute the following at the command line

```
heroku local -f Profile.dev
```

### Features of News App

- Signup with username, email and password
- Login with email and password
- View daily pricelist
- View News

### Testing

Tests can be run using below for Rails

```
rspec
```

Tests can be run using below for React

```
cd client && npm test
```
