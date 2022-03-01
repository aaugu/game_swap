Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "pages#home"
  resources :games, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
end
