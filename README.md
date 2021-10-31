# SocialNetwork
1. Made with Ruby 3.0.2 and Rails 6.1.4. This app is an MVC that uses view components, bootstrap and webpacker for the frontend-related logic.

2. SocialNetwork links:
- Github repository: https://github.com/juannodeb/social_network

- Heroku deployed app: https://social-network-juannodeb.herokuapp.com/

**Please bare in mind that since this is running in free dynos it may not be available sometimes.**

---

### How to use

1. Open your terminal.

2. Check if you have ruby installed with `ruby -v`. If not installed use for example `rvm install 3.0.2` or google more ways to install it.

3. Choose whether you want to clone or download the repository

***Download:***
Click on the Clone or download button

Click on Download ZIP

Choose where to save the repository

Extract the downloaded folder

***Clone:***
Check if you have git installed with `git --version`

If not installed use for example `sudo apt-get install git` or google more ways to install it

Click on the Clone or download button

Copy the link given

Go to the terminal and cd into the folder you will clone the app

Use `git@github.com:juannodeb/social_network.git`

***Run the app:***  

cd into the app folder and run

`bundle install`
`raild db:create db:migrate db:seed`

---

# TODO

- Add 'friends' functionality

- Refactor likes&dislikes functionality

- Find a way to embed comments form in the post view

- Finish edit user form functionality

- Add overall app unit testing with RSpec & Capybara

- Learn more about Components in Rails and refactor de current code, since this is my first time working with this architecture.
