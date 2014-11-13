class TotalLikesController < ApplicationController

  def get_total_likes
    temp_images = Image.where(image_set_id: params[:id])
    @total = 0

    temp_images.map do |image|
      @total = @total + image.likes.length
    end

    @temp_object = {total_likes: @total}

    render json: @temp_object

  end

end

