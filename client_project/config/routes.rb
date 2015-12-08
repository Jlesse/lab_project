Rails.application.routes.draw do
  root 'experiments#index'
resources :users
resources :experiments do
  resources :proposals
end
resources :comments
resources :observations

get '/sessions/new', to: 'sessions#new'
post '/sessions/login', to: 'sessions#login'
get '/sessions/logout', to: 'sessions#logout'

end
