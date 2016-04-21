class DispUsersController < ApplicationController
  def index
    @users = User.all
    @teachers = Teacher.all
  end
end
