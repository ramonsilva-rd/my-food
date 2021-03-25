Rails.application.routes.draw do
  root to: 'home#index'

  resources :meals
  resources :restaurants
  resources :categories

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
