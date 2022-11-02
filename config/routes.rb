Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :challenges do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[edit update destroy]

  resources :bookings, only: [] do
    member do
      patch :accept
      patch :decline
    end
  end
  get "dashboard", to: "pages#dashboard"
end
