Rails.application.routes.draw do
  devise_for :users
  root to: "challenges#index"
  resources :challenges do
    resources :bookings, only: %i[new create edit update destroy]
  end
end
