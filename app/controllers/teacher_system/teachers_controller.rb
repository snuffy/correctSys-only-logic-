class TeacherSystem::TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @cources = Cource.all
    @teacher = current_user
    if @teacher.cources
      @my_cource = current_user.cources
    end
  end

  def index
    @cources = current_user.cources
  end

  def attendance
    @teacher = current_user
    @teacher.cources << Cource.find(params[:id])
    redirect_to [:teacher_system, @teacher]
  end


  private
  def teacher_params
    params.require(:teacher).permit(:name)
  end
end
