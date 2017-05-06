Rails.application.routes.draw do
  resources :locations
  resources :users

  devise_for :user

  root to: "locations#index"


  get '/welcome', to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
