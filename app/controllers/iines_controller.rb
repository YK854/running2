class IinesController < ApplicationController

  def create
    photo = Photo.find(params[:photo_id])
    p "oooooooo"
    p iine = current_user.iines.new(photo_id: photo.id)
    iine.save
    redirect_to photo_path(photo)
  end

  def destroy
    photo = Photo.find(params[:photo_id])
    p "endddddddddd"
    p favorite = current_user.iines.find_by(photo_id: photo.id)
    favorite.destroy
    redirect_to photo_path(photo)
  end

end
