class WelcomesController < ApplicationController
 
 before_action :authenticate_user!
  
  def index
  
  end

  def show
    @sections = Section.all
  end
end
