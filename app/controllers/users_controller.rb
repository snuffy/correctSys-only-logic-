class UsersController < ApplicationController
  def new
    @user = User.new
    @teacher = Teacher.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def index
    @users = User.all
    @teachers = Teacher.all
    @cources = Cource.all
  end

  def show
    @user = current_user
    @cources = Cource.all
    if current_user.cources
      @my_cources = current_user.cources
    end
  end

  def attendance
    @user = current_user
    @user.cources << Cource.find(params[:cource_id])
    redirect_to current_user
  end


  private

  def user_params
    params.require(:user).permit(:name)
  end
end
