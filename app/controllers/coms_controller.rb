class ComsController < ApplicationController

  def create
    @photo = Photo.find(params[:photo_id])
    @com = Com.new(com_params)
    @com.user_id = current_user.id
    @com.photo_id = @photo.id
    @com.save
    redirect_to photo_path(@com.photo_id)

  end

  def destroy
    @com = Com.find(params[:id])
    @com.destroy
    redirect_to photo_path(@com.photo_id)
  end

  private

  def com_params
    params.require(:com).permit(:com)
  end

end
