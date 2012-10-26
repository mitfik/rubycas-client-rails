class WelcomeController < ApplicationController
  before_filter RubyCAS::Client::Rails::Filter, :only => [:admin]
  before_filter RubyCAS::Client::Rails::GatewayFilter, :only => [:index]

  def index

  end

  def admin

  end

  def logout
    RubyCAS::Client::Rails::Filter.logout(self)
  end
end
