class TeacherSystem::SessionsController < ApplicationController
  def new
  end

  def create
    user_or_teacher = params[:dist]
    if params[:dist] == 'true'
      teacher = Teacher.find(params[:id])
      login(teacher,true)
      redirect_to [:teacher_system, teacher]
    elsif params[:dist] == 'false'
      user = User.find(params[:id])
      login(user,false)
      redirect_to user
    else
      flash[:error] = 'エラーです'
      redirect_to root_url
    end
  end

  def destroy
    logout
    redirect_to root_url
  end
end
