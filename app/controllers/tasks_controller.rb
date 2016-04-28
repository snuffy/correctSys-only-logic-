class TasksController < ApplicationController
  def new
    @cource = current_user.cources.find(params[:cource_id])
    @task = Task.new
  end

  def create
    @cource = current_user.cources.where(id: params[:cource_id])
    teacher = current_user
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to @task
    else
      redirect_to root_url
    end
  end

  def show
    @task = current_user.tasks
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
    params.require(:task).permit(:name,:content,:user_id,:cource_id)
  end
end
