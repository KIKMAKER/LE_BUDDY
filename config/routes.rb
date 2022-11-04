Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :challenges do
    resources :bookings, only: %i[new create]
    resources :conversations, only: :create
  end

  resources :bookings, only: %i[edit update destroy]

  resources :bookings, only: [] do
    member do
      patch :accept
      patch :decline
    end
  end
  resources :conversations, only: %i[show index] do
    resources :messages, only: :create
  end
  get "dashboard", to: "pages#dashboard"
end
