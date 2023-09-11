Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
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
