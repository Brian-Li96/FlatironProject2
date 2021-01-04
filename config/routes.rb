Rails.application.routes.draw do
  resources :animals
  resources :people
  resources :appointments
  resources :adoptions
  resources :shelters

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
