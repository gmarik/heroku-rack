## About

Minimal [Heroku](http://heroku.com) [Rack](http://github.com/rack) example app.


## Installation


    $ git clone http://github.com/gmarik/heroku-rack ~/src/heroku-rack && cd ~/src/heroku-rack
    $ bundle install


## Test

    $ cd ~/src/heroku-rack
    $ ./config.ru
    Run options: --seed 5477

    # Running tests:

    .

    Finished tests in 0.022249s, 44.9458 tests/s, 89.8917 assertions/s.

    1 tests, 2 assertions, 0 failures, 0 errors, 0 skips

## Running locally

    $ cd ~/src/heroku-rack
    $ ./bin/foreman start

spits

    00:56:33 web.1     | started with pid 5876
    00:56:34 web.1     | [2011-11-06 00:56:34] INFO  WEBrick 1.3.1
    00:56:34 web.1     | [2011-11-06 00:56:34] INFO  ruby 1.9.2 (2011-07-09) [x86_64-darwin10.8.0]
    00:56:34 web.1     | [2011-11-06 00:56:34] INFO  WEBrick::HTTPServer#start: pid=5877 port=5000

## Running on Heroku

    $ cd ~/src/heroku-rack
    $ read -p 'enter your heroku app name: ' APP_NAME
    $ heroku create $APP_NAME --stack cedar
    $ git push heroku


will spit something like this:


    Counting objects: 9, done.
    Delta compression using up to 2 threads.
    Compressing objects: 100% (7/7), done.
    Writing objects: 100% (7/7), 795 bytes, done.
    Total 7 (delta 5), reused 0 (delta 0)

    -----> Heroku receiving push
    -----> Ruby/Rack app detected
    -----> Installing dependencies using Bundler version 1.1.rc
          Running: bundle install --without development:test --path vendor/bundle --deployment
          Using rack (1.3.5)
          Using bundler (1.1.rc)
          Your bundle is complete! It was installed into ./vendor/bundle
          Cleaning up the bundler cache.
    -----> Discovering process types
          Procfile declares types     -> web
          Default types for Ruby/Rack -> console, rake
    -----> Compiled slug size is 680K
    -----> Launching... done, v6
          http://$APP_NAME.herokuapp.com deployed to Heroku

    To git@heroku.com:heroku-rack.git
      14805d3..f3d619a  HEAD -> master


Then

    $ curl http://$APP_NAME.herokuapp.com

will yield

    Heroku Rack!

