class CoordinatesController < ApplicationController
  def index
    @coordinates = Coordinate.all.order("created_at DESC").limit(30)
  end

  def new
    @coordinate = Coordinate.new
  end

  def create
    @coordinate = Coordinate.new(coordinate_params)
    @coordinate.save
    redirect_to root_path
  end

  def show
    @coordinate = Coordinate.find(params[:id])
    @user = User.find(params[:id])
    @coordinates = @user.coordinates.order("created_at DESC").limit(3)
  end

  private

  def coordinate_params
    params.require(:coordinate).permit(:image, :item_detail).merge(user_id: current_user.id)
  end

end

