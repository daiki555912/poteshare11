Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :users
  resources :rooms do
    collection do
      get 'search'
    end
  end
  resources :bookings

  
end
