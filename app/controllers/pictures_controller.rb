class PicturesController < ApplicationController

  def new
    @picture = Picture.new
  end

  def create
    Picture.create(picture_params)
    redirect_to '/'
  end

  def index
    @pictures = Picture.all
    render :index
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :caption, :image)
  end

end
