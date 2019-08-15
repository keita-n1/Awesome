Rails.application.routes.draw do
  devise_for :users
  resources :coordinates, only: [:index, :new, :create, :show]
  resources :users, only: [:index]
  root "coordinates#index"
end
