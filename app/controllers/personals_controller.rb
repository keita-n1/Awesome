class PersonalsController < ApplicationController
  def new
    @personal = Personal.new
  end

  def create
    @personal = Personal.new(personal_params)
    @personal.save
    redirect_to root_path
  end

  def show
    @personal = Personal.find_by(user_id: current_user.id)
  end

  private

  def personal_params
    params.require(:personal).permit(:gender, :age, :height, :profile, :profile_image).merge(user_id: current_user.id)
  end

end
