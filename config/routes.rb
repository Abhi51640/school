Rails.application.routes.draw do
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations"}
  devise_scope :user do
      # root to: "devise/sessions#new"
      # get 'sign_in', to: 'devise/sessions/new'
  end
  # get 'devise/sessions/new'
  root :to => "welcomes#index"
  resources :welcomes 
  resources :students
  resources :sections
  resources :checkins

  controller :pages do
    get :qr_code_generator
    get :qr_code_download
  end

  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
