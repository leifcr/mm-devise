# MongoMapper for Devise

`mm-devise` will let you use [devise](http://github.com/plataformatec/devise) with [MongoMapper](http://github.com/jnunemaker/mongomapper).

`mm-devise` is intended for use with `Rails 3+` and `Devise 1.2` and above. It may work with earlier versions of devise.

This README only covers `mm-devise` specifics. Make sure to read the [devise README](http://github.com/plataformatec/devise/blob/master/README.rdoc)


## Installation

Add `devise`, `mm-devise` and `mongo_mapper` gems to your Gemfile (your Rails app Gemfile).

    gem 'mongo_mapper'
    # You'll want this to for better mongo driver performance
    gem 'bson_ext'

    gem 'devise'
    gem 'mm-devise', :git => "git://github.com/roboteti/mm-devise"

Use bundler to install all required gems in your Rails 3 app

    bundle install

Run the devise install generator, followed by the mm-devise model generator:

    rails generate devise:install
    rails generate devise MODEL

The devise install generator will install an initializer
(`config/inititializer/devise.rb`) which describes ALL Devise's configuration
options and you MUST take a look at it. Maker sure this line exists:

    require 'devise/orm/mongo_mapper'

NOTE: The model generator should do this automatically.

To add Devise to any of your models using the generator:

     rails generate devise MODEL

Example: create a User model for use with Devise

    rails generate devise MODEL

Read the README for devise at [devise README](http://github.com/plataformatec/devise/blob/master/README.rdoc)

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Maintainers

*J-P Teti*
*Kristian Mandrup* (probably abandoned)

## Contributors

*bmarini* - Updated to support MongoMapper 0.9 (June 2011)
*bhbryant* - Fixed some issues and updated gem (Jan 2011)
*Jared Morgan* - Created the dm-devise gem which was used as a template for the development of this gem.
Also made suggestions for a few critical fixes and improvements in the code. Thanks :)

## Bugs and Feedback

For *mm-devise* specific issues, please create an issue on GitHub at: [mm-devise issues](http://github.com/kristianmandrup/mm-devise/issues)

## Copyright

Copyright (c) 2013 J-P Teti.
Copyright (c) 2010 Kristian Mandrup.

See LICENSE for details.


