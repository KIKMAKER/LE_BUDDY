Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :challenges do
    resources :bookings, only: %i[new create edit update destroy]
  end
  resources :bookings, only: [] do
    member do
      patch :accept
      patch :decline
    end
  end
  resource :dashboard, only: %i[show update]
end
