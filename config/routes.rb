Rails.application.routes.draw do
  resources :deep_wells
  resources :plants
  resources :islands
  devise_for :users, controllers: {
      sessions: 'sessions'
  }
  resources :users, only: [:index, :show, :edit, :update]
  resource :two_factor_settings, except: [:index, :show]
  root 'islands#index'
  get 'homepage', to:'home#homepage'
  get 'dashboard', to:'home#dashboard'
end
