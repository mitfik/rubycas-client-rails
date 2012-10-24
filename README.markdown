RubyCAS-Client-Rails
====================

Rails plugin for using the RubyCAS-Client as a controller filter.

This uses a Railtie, so will only work with Rails 3.0 and up.


Installation
============

Add the following to your `Gemfile`:

    gem 'rubycas-client-rails', :git => 'git://github.com/mitfik/rubycas-client-rails.git'

Then run bundler in your Rails app's root directory:

    bundle install

Once the necessary gems have been installed, in your `application.rb` add:

    config.rubycas.cas_base_url = 'https://cas.example.com/'

Finally, to enable the CAS filter for a controller:

    class MyController < ApplicationController

      before_filter RubyCAS::Client::Rails::Filter

If you want authentication to be optional, use the GatewayFilter instead:

      before_filter RubyCAS::Client::Rails::GatewayFilter

Many other configuration options are available. For example you can instruct
the client to log its actions to the default Rails logger using:

    config.rubycas.logger = Rails.logger

This project rocks and uses MIT-LICENSE.
