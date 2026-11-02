# Product Hunt Clone

A small Ruby on Rails exercise that starts a Product Hunt-style app: a public list of products and a sign-in-protected form to add one.

## Context

Built in a single day (22 August 2020, four commits) as a learning exercise during the Le Wagon coding bootcamp. The app was generated from the [lewagon/rails-templates](https://github.com/lewagon/rails-templates) Devise template, and the work focuses on practising test-first development (TDD) with Rails system tests and Travis CI.

## What it does

- `GET /` (`products#index`) lists every product with its name and tagline. It is public.
- `GET /products/new` and `POST /products` show a Simple Form to create a product, for signed-in users only (Devise authentication on every other route).
- `db/seeds.rb` creates 5 fake products with Faker.
- Tests: fixtures for products and a user, plus a system test file (`test/system/products_test.rb`) with two Capybara tests, run with headless Chrome.

The create flow is unfinished. In `ProductsController` the strong-parameters method is misspelled (`product_paramas` / `permite`), so creating a product raises an error, and the second system test has typos of its own. Products have no votes, comments or user ownership yet.

## Stack

Ruby 2.6.6, Rails 6.0.3, PostgreSQL, Devise, Simple Form, Bootstrap (Le Wagon template styles), Webpacker, Minitest + Capybara + Selenium, Travis CI (`.travis.yml`).

## Running it locally

Requires Ruby 2.6.6, PostgreSQL, Yarn and Chrome (for system tests).

```bash
bundle install
yarn install
rails db:create db:migrate db:seed
rails server
```

## Status

Archived learning project from 2020, not maintained.
