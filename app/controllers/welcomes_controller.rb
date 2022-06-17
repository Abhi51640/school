class WelcomesController < ApplicationController
 
 before_action :authenticate_user!
  
  def index
   @sections = Section.all
  end
end
