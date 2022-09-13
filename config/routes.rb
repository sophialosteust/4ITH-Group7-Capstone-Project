Rails.application.routes.draw do
  resources :islands
  devise_for :users
  root 'islands#index'
  get 'homepage', to:'home#homepage'
  get 'dashboard', to:'home#dashboard'
end
