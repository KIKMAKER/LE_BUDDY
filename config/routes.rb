Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :challenges do
    resources :bookings, only: %i[new create edit update destroy]
  end
  resource :dashboard, only: :show
end
