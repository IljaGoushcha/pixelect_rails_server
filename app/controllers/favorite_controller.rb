class FavoriteController < ApplicationController

  def get_favorite
    temp_image_sets = ImageSet.all
    @image_sets = temp_image_sets.sort_by {|img_set| img_set[:total_likes]}
    @image_sets.reverse!
    render json: @image_sets, :include => :images
  end
end
