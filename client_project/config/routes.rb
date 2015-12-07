Rails.application.routes.draw do
  root 'experiments#index'
resources :users
resources :experiments
resources :comments
resources :observations
resources :proposals

end
