Mimir::Application.routes.draw do

  ActiveAdmin.routes(self)

  resources :records

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  match 'hello_world' => 'home#reports'
  
end