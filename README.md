# _Super Special Store_

_Version 1, 10/16/2020_

#### _An application that tracks products and their reviews._

### By: _**Brycen Bartolome**_

## Description

This project connects to a postgreSQL database. It stores information for product name, cost, and origi. It stores data for review authors, rating, and the review itself. You can see 3 most recent products added to the database and product with the most number of reviews on the landing page>

_With this project:_

- a user will be able to view, add, update and delete products.
- a user will also be able to view, add, update and delete reviews.

## Setup & Installation

- Clone project to desktop <code>\$ git clone https://github.com/BrycenGit/super_special_super_store.git</code>
- Move to project directory <code>\$ cd super_special_super_store</code>
- Open project in vscode <code>\$ code .</code>
- In terminal run <code>\$ bundle install</code>
- In terminal run <code>\$ touch .env</code>
- In .env file add text PG={YOUR POSTGRESS PASSWORD WITHOUT BRACES OR QUOTES}
- In terminal run <code>\$ rake db:create</code>
- In terminal run <code>\$ rake db:migrate</code>
- In terminal run <code>\$ rake db:seed</code>
- In terminal run <code>\$ rspec</code>
- In terminal run <code>\$ rails s</code>

## Known Bugs

Make sure you add .env file with text PG={YOUR POSTGRESS PASSWORD WITHOUT BRACES OR QUOTES}
i.e PG=password

## Technologies Used

- Ruby
- Rails
- Gems: rspec, pry, rspec, capybara, pg, dotenv, rails, puma, sass-rails, uglifier, ducktape, coffee-rails, bootstrap, turbolinks, jbuilder, bootstrap-sass, faker.
  -Faker

### License

Copyright (c) 2020 **Brycen Bartolome**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
