Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  root "users#index"
end
