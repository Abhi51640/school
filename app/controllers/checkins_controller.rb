class CheckinsController < ApplicationController
  
  def index
   @checkin = Checkin.all
  end
end
