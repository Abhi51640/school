class CheckinsController < ApplicationController
  
  def index
   @checkin = Checkin.all
  end
  
  
  def new
    @checkin = Checkin.new(checkin_params)
    if @checkin.save
      redirect_to @checkin
    else
      render :new
    end
  end
end
