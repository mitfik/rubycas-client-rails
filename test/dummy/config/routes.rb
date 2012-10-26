Dummy::Application.routes.draw do
  get "welcome/logout", :as => "logout"
  get "welcome/admin"
  root :to => 'welcome#index'
end
