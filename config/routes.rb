Rails.application.routes.draw do
  devise_for :users
  root to: "equipments#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :equipments do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: [:index, :destroy]
end
