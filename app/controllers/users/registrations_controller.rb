# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

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
        # UserMailer.with(user: @user).welcome_email.deliver_later

        # super
        # UserMailer.welcome(resource).deliver unless resource.invalid?
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


  private 
   def user_params
    params.require(:user).permit(:email, :encrypted_password, :password, :first_name, :last_name, :date_of_birth, :gender, :city)
  end
end
