# README

How to run:
1. clone the repo and run `bundle install`

2. enter your slack WEBHOOK url in [this file](./config/initializers/slack_notifier.rb)

3. run the server through foreman by using `foreman start -f Procfile.dev` or just run `bin/rails s`

4. make a POST request to the [root url]("/) with a JSON body. (Remember, JSON doesn't have a trailing comma after the last key/value pair)
