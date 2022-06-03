Rails.application.routes.draw do
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations"}
  
  # get 'devise/sessions/new'
  root :to => "welcome#index"
  resources :welcomes 
  resources :students

  controller :pages do
    get :qr_code_generator
    get :qr_code_download
  end

  # devise_for :admin_users, ActiveAdmin::Devise.config
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  
  


end
