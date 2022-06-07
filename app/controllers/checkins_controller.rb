class CheckinsController < ApplicationController
  
  def index
   @chcekin = Checkin.all
  end
end
