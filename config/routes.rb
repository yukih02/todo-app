Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'boards#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :boards do
  end
end
