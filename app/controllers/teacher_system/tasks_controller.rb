class TeacherSystem::TasksController < ApplicationController
  def new
    @cource = current_user.cources.find(params[:cource_id])
    @task = Task.new
  end

  def create
    @cource = current_user.cources.where(id: params[:cource_id])
    teacher = current_user
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to teacher_system_cource_show_tasks_path
    else
      redirect_to root_url
    end
  end

  def show
    @mytasks = current_user.tasks
    @mycource = current_user.cources
  end

  def index_cource
    @mycource = current_user.cources
    @mytasks = current_user.tasks
  end

  def index
    @mytasks = current_user.tasks
  end


  def edit
  end

  def update
  end

  private
  def task_params
    params.require(:task).permit(:name,:content,:user_id,:cource_id,)
  end
end
