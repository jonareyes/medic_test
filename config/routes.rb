Rails.application.routes.draw do
  root 'main#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :patients
  resources :users
end
