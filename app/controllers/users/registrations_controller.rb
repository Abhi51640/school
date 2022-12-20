# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

  # # GET /resource/sign_up
  # def new
  #   @user = User.new
  # end

  # def index
  #   @users = User.all
  # end

  # # POST /resource
  # def create
  #   @user = User.new(user_params)
  #     if @user.save
  #       redirect_to @user
  #     else
  #     render :new, status: :unprocesseable_entity
  #   end
  # end

  # # DELETE /resource
  # def destroy
  # @users = User.find(params[:id])
  #   @user.destroy
  #   redirect_to user_registration_path
  # end

  # private 
  #  def user_params
  #   params.require(:user).permit(:email, :encrypted_password, :password, :first_name, :last_name, :date_of_birth, :gender, :city)
  # end
end

