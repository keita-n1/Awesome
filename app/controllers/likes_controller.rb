class LikesController < ApplicationController
  # before_action :logged_in_user

  def create
    @coordinate = Coordinate.find(params[:coordinate_id])
    unless @coordinate.iine?(current_user)
      @coordinate.iine(current_user)
      @coordinate.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  def destroy
    @coordinate = Like.find(params[:id]).coordinate
    if @coordinate.iine?(current_user)
      @coordinate.uniine(current_user)
      @coordinate.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end
end
