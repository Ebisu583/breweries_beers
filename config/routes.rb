Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :breweries, only: [:index, :show] do
    resources :beers, only: [:create]
  end
  resources :beers, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
