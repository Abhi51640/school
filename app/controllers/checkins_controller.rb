class CheckinsController < ApplicationController
 
  before_action :change_re_direction, only: :new_checkin
  
  def index
    @checkin = Checkin.all
  end
  
  def new_checkin
    @student = Student.find(params[:student_id])
    @new_checkin = @student.checkins.create
    redirect_to checkin_path(@new_checkin)
  end

 def show
  
  end
 

  def change_re_direction
    if params[:student_id].nil?
      redirect_to checkin_path(params[:id]) and return
    end
  end
  
  private
  def new_checkin_params
    params.require(:checkin_params).permit(:student_id , :section_id)
  end
end
