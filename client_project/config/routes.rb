Rails.application.routes.draw do

  root 'experiments#index'
resources :users
resources :experiments do
  resources :proposals
end
resources :comments
resources :observations


get 'admin', :to => "sessions#index"
get 'login', :to => "sessions#login"
<<<<<<< HEAD
get "/experiments/:id/log", :to => "log#new"
post "/experiments/:id/log", :to => "log#create"
=======
get "/experiments/:id/logs/new", :to => "logs#new", as: 'new_log'
post "/experiments/:id/logs", :to => "logs#create"
>>>>>>> e29248b1ddb0201b470dd612c4b3944d55a1c441

# get 'students' :to => "sessions#index"
#go to the same place, redirect to different pages, with before_actions to prevent
# access unless you belonged...login page needs to be homepage, directs based on login...
# then our admin page will be locked to admin only...students will be open to all

match ':controller(/:action(/:id))', :via => [:get, :post]

end
