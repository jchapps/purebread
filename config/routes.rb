Rails.application.routes.draw do
  root to: "sandwiches#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :sandwiches, only: [:create, :new, :show, :destroy] do
    resources :shops, only: [:new, :create]
  end
  resources :ingredients, only: [:new, :create, :show, :index]
end
