Rails.application.routes.draw do

  root 'experiments#index'
resources :users
resources :experiments do
  resources :proposals
end
resources :comments
resources :observations

get 'admin', :to => "sessions#index"
# get 'students' :to => "sessions#index"
#go to the same place, redirect to different pages, with before_actions to prevent
# access unless you belonged...login page needs to be homepage, directs based on login...
# then our admin page will be locked to admin only...students will be open to all

match ':controller(/:action(/:id))', :via => [:get, :post]

end
