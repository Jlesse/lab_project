Rails.application.routes.draw do
  root 'experiments#index'
resources :users

resources :experiments

resources :comments

resources :observations

resources :proposals

get 'admin', :to => "sessions#index"

match ':controller(/:action(/:id))', :via => [:get, :post]

end
