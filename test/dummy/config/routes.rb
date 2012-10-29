Dummy::Application.routes.draw do
  get "welcome/logout", :as => "logout"
  post "welcome/autologin", :as => "autologin"
  get "welcome/admin"
  root :to => 'welcome#index'
end
