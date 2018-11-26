# Instagram Challenge

This challenge is an Instagram clone in rails. The Kanban board can be found [here](https://waffle.io/Caitlin-cooling/instagram-challenges).

### How to Use
1. `git clone https://github.com/Caitlin-cooling/instagram-challenge`
2. `cd instagram-challenge`
3. `bundle install`
4. `rails db:migrate`
5. `rails s`
6. `localhost:3000`

You will then be asked to create an account or log in if you have one already. From there you will see your feed with all posts. Click new post to create a post of your own.

This app is also hosted on Heroku and can be found [here](https://caitlin-instagram-challenge.herokuapp.com/).

### How to run the tests
The tests for this repo are written using rspec and capybara. To run the tests, run `rspec` from the command line.

### Built with
- Ruby on Rails - the web framework
- ActiveRecord - the ORM (part of rails)
- Rspec and Capybara - the testing frameworks
- Travis - CI
- Heroku - CD
- Devise - user authentication
