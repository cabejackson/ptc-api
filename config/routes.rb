Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  root 'pages#home'
  namespace :api do
    namespace :v1 do
      resources :steps
      resources :cards
      resources :users
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
