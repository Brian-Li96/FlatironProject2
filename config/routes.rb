Rails.application.routes.draw do

  root 'sessions#new'
  resources :animals
  resources :people
  resources :appointments
  resources :adoptions
  resources :shelters

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
