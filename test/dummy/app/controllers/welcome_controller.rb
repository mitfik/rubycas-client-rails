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

  def autologin
    credentials =  {:username => params[:login], :password => params[:password]}
    response = RubyCAS::Client::Rails::Filter.login_to_service(credentials, root_url)
    if response.is_failure?
      flash[:error] = response.failure_message
      render :action => 'index'
    else
      response.cookies.each do |cookie|
        cookies["tgt"] = {:value => cookie["tgt"], :domain => cookie["domain"], :expires => cookie["expires"], :path => cookie["path"], :secure => cookie["secure"], :httponly => cookie["httponly"]}
      end
      return redirect_to(response.service_redirect_url)
    end
  end
end
