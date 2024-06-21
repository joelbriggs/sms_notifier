# README

This application requires the following installed.
* Ruby version  3.2.2
* Rails version 7.1.3

To begin clone the project onto your machine and run the `bundle install` command.
We are using Redis to process background jobs so make sure it is running using the `redis-server` command.
Now start the rails server using the `rails s` command.

The project should be running now at `localhost:3000` in your browser

Press any of the buttons to simulate an action the user may take and it will send a text message of the action.

**Note** the Twilio API will not accept the current `account_sid` and `auth_token` in the `sms_gatewat.rb` file.

