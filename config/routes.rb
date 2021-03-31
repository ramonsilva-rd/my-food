Rails.application.routes.draw do
  root to: 'home#index'

  resources :meals
  resources :restaurants
  resources :categories

  get 'shopping_cart', action: :show, controller: 'shopping_cart'
  put 'shopping_cart/item/:id', action: :update, controller: 'shopping_cart'
  delete 'shopping_cart/item/:id', action: :delete, controller: 'shopping_cart'
  put 'shopping_cart/clean', to: 'shopping_cart#clean'

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
