Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'experiments#index'
resources :users

resources :experiments

resources :comments

resources :observations

resources :proposals

end
