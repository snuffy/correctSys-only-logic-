class TeacherSystem::CourcesController < ApplicationController
  def new
    @cource = Cource.new
  end

  def show
    @cource = Cource.find(params[:id])
    @tasks = @cource.tasks
  end

  def create
    @cource = Cource.new(cource_params)
    redirect_to root_url if @cource.save
  end

  def index
    @cources = Cource.all
  end

  private
  def cource_params
    params.require(:cource).permit(:name,:description)
  end
end
