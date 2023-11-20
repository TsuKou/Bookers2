class UsersController < ApplicationController

  def new
  end

  def create
  end

  def index
    @users = User.all
    
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
    redirect_to user_path(current_user)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user)
  end

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
