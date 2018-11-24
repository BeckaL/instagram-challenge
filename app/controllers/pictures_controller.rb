class PicturesController < ApplicationController

  def create
    @picture = Picture.new
    redirect_to '/'
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :caption, :image)
  end

end
