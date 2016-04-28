class CourcesController < ApplicationController
  def new
    @cource = Cource.new
  end

  def show
    @cource = Cource.find(params[:id])
    @tasks = @cource.tasks
    @user = current_user
  end

  def create
    @cource = Cource.new(cource_params)
    redirect_to root_url if @cource.save
  end

  def index_attend_users
    @this_cource = Cource.find(params[:cource_id  ])
    @attend_users = @this_cource.users
  end
  def index
    @cources = Cource.all
  end

  private
  def cource_params
    params.require(:cource).permit(:name,:description)
  end
end
