# Instagram Challenge

This challenge is an Instagram clone in rails.

This app is also hosted on Heroku and can be found [here](https://caitlin-instagram-challenge.herokuapp.com/).

You will then be asked to create an account with an avatar or log in if you have one already. From there you will see your feed with all posts.

![Alt text](/app/assets/images/screenshot.png)

Click new post to create a post of your own. A user can like or comment on pictures. The like amount and comments will display on each post. You can edit or delete your own posts.

A user has a profile page that will show their own posts that they can click to see more info about. This page will also show their avatar.

A user can edit the details of their account, and delete their account.

### Contributing
1. `git clone https://github.com/Caitlin-cooling/instagram-challenge`
2. `cd instagram-challenge`
3. `bundle install`
4. `rails db:migrate`
5. `rails s`
6. `localhost:3000`

### How to run the tests
The tests for this repo are written using rspec and capybara. To run the tests, run `rspec` from the command line.

### Technologies Used
- Ruby on Rails - the web framework
- ActiveRecord - the ORM (part of rails)
- Rspec and Capybara - the testing frameworks
- Travis - CI
- Heroku - CD
- Devise - user authentication
- Acts_as_votable gem - likes
- Acts_as_commentable gem - comments

### Known Issues
- Currently when a user deletes their account and they still have posts in the database, the feed will break. Please ensure that you delete your posts before you delete your account.
- All pages are expecting a user to have an avatar, so please upload one when you sign up.
