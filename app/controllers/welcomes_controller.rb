class WelcomesController < ApplicationController
 before_action :authenticate_user!
	

	def index
   @sections = Section.all
   @students = Student.all
	end
end
