class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :image

  def update_total_likes
    this.total_likes = logic
  end

end
