class SectionsController < ApplicationController
	def new
	  @section = Section.new
	end

	def index
   
   
	end

	# POST /resource
	def create
	  @section = Section.new(user_params)
	  #binding.pry
	    if @section.save
	      redirect_to @section
	    else
	      render :new, status: :unprocesseable_entity
	  end
	end

	# DELETE /resource
	def destroy
	@section = section.find(params[:id])
	  @section.destroy
	  redirect_to admin_sections_path
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
	  params.require(:section).permit(:standard, :section_name,:student)
	end


end