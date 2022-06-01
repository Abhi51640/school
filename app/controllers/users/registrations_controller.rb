# frozen_string_literal: true

class User::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

     # validates :user_id, :name, :class, presence: true

  # GET /resource/sign_up
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  # POST /resource
  def create
    @user = User.new(user_params)
    #binding.pry
      if @user.save
        UserMailer.with(user: @user).welcome_email.deliver_later

        super
        UserMailer.welcome(resource).deliver unless resource.invalid?
        redirect_to @user
      else
        render :new, status: :unprocesseable_entity
    end
  end

  # DELETE /resource
  def destroy
  @users = User.find(params[:id])
    @user.destroy
    redirect_to user_registration_path
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end


  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  private 
   def user_params
    params.require(:user).permit(:email, :encrypted_password, :password, :first_name, :last_name, :date_of_birth, :gender, :city)
  end
end