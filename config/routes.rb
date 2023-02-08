Rails.application.routes.draw do
  devise_for :employees
  resources :rosters
  resources :shifts
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resource :pages, only: [:index]

  

  #root_to = 'admin/dashboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root 'pages#index'
end
