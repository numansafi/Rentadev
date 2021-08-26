Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :listings do
    resources :bookings, except: [:destroy]
  end

  resources :bookings, only: [:destroy]
end
