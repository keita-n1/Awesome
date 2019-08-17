class UsersController < ApplicationController
  def show
    @user = User.find_by(id: current_user.id)
  end

  def create
    binding.pry
    @user = User.new(user_params)
    @user.save
    redirect_to root_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to root_path
  end

  private 

  def user_params
    params.require(:user).permit(:gender, :age, :height, :profile, :profile_image)
  end

end
