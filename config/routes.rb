Rails.application.routes.draw do
  
  root to:'events#index'
  get 'users/show'
  resources :events
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
