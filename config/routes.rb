Rails.application.routes.draw do
  resources :locations


  #devise_for :user

  devise_for :users, controllers: {registrations: "users/registrations", :omniauth_callbacks => "users/omniauth_callbacks"}
  #devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users
  root to: "locations#index"


  get '/welcome', to: 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
