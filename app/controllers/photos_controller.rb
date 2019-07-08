class PhotosController < ApplicationController

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params)
    
    redirect_to place_path(@place)
  end

  def show
    @place = Place.find(params[:place_id])
    @photo = Photo.new
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, {pictures: []})
  end
end
