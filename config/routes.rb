Rails.application.routes.draw do
  resources :sales
  devise_for :users
  root 'books#index'
  get '/my_reservations', to: 'users#my_reservations'
  get '/my_purchases', to: 'users#my_purchases'

  resources :reservations
  resources :books do
    member do
      post 'reserve', to: 'books#reserve'
      get 'buy', to: 'books#buy'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
