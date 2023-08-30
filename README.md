# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Preview 
    
- Home Page 
    ![Home page, big header](https://github.com/Mosse-Sox/jungle/blob/master/public/images/homepage.png?raw=true)
  
    ![Home page, products and nav](https://github.com/Mosse-Sox/jungle/blob/master/public/images/homepage2.png?raw=true)

<br>

-  Product Details Page 
    ![products detail page](https://github.com/Mosse-Sox/jungle/blob/master/public/images/product_details_page.png?raw=true)


<br>

- Register  
    ![registration page](https://github.com/Mosse-Sox/jungle/blob/master/public/images/register.png?raw=true)


<br>

- Login  
    ![login page](https://github.com/Mosse-Sox/jungle/blob/master/public/images/login.png?raw=true)


<br>

- Http Auth For Admin Pages  
    ![example http auth for admin](https://github.com/Mosse-Sox/jungle/blob/master/public/images/http_auth_for_admin.png?raw=true)

<br>

- Admin Page Example  
    ![example of an admin page](https://github.com/Mosse-Sox/jungle/blob/master/public/images/admin_pages.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
