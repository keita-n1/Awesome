Rails.application.routes.draw do
  devise_for :users
  resources :coordinates, only: [:index, :new, :create, :show]
  root "coordinates#index"
end
