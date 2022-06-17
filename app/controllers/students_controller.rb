class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def index
  # @sections = Sections.where(section_id: @section.id)
    @students = Student.all.order(created_at: :desc)
  end

  # POST /resource
  def create
    @student = Student.new(student_params)
      if @student.save
        # UserMailer.with(user: @user).welcome_email.deliver_later
        # super
        # UserMailer.welcome(resource).deliver unless resource.invalid?
        redirect_to @student
      else
        render :new, status: :unprocesseable_entity
    end
  end

  def show
    @student = Student.find(params[:id])
      @student.show
      redirect_to admin_students_path
  end
 
  # GET /resource/edit
  def edit
    @student = Student.find(params[:id])
      @student.edit
      redirect_to admin_students_path
  end

  # PUT /resource
  def update
    @student = Student.find(params[:id])
      @student.update
      redirect_to admin_students_path
  end

  # DELETE /resource
  def destroy
  @student = Student.find(params[:id])
    @student.destroy
    redirect_to admin_students_path
  end

  private 
   def student_params
    params.require(:student).permit(:first_name, :last_name,:father_name, :mother_name,:date_of_birth, :gender,:section,:city,:phone_no)
  end
end