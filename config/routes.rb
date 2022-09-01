Rails.application.routes.draw do



  resources :projects
  resources :houses
  resources :contacts
  resources :appliances
  devise_for :users
end
