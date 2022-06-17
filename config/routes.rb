Rails.application.routes.draw do
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations"}

  root :to => "welcomes#index"
  
  resources :welcomes 
  resources :students
  resources :sections
  resources :checkins

  get 'store_new_checkin' , to: 'checkins#new_checkin'
   
  controller :pages do
    get :qr_code_generator
    get :qr_code_download
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
