class PicturesController < ApplicationController

  def new
    @picture = Picture.new
  end

  def create
    Picture.create(picture_params)
    redirect_to '/pictures'
  end

  def index
    @pictures = Picture.all
    render :index
  end

  def destroy
    picture = Picture.find(params[:id])
    picture.destroy
    redirect_to '/pictures'
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :caption, :image)
  end

end
