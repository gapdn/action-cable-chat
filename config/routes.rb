Rails.application.routes.draw do 
  get 'messages/create'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Temporary root path. Will be changed
  root "rooms#index"

  resources :rooms do
    resources :messages
  end
end
