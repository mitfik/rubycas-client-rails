class WelcomeController < ApplicationController
  before_filter RubyCAS::Client::Rails::Filter

  def index
  end
end
