Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :yachts do
    resources :bookings, only: [:create]
    collection do
      get 'myyachts'
    end
  end
  resources :bookings, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
