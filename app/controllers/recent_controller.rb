class RecentController < ApplicationController

  def get_recent
    temp_image_sets = ImageSet.all
    @image_sets = temp_image_sets.sort_by {|img_set| img_set[:created_at]}
    @image_sets.reverse!
    render json: @image_sets, :include => :images
  end
end
