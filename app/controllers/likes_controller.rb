class LikesController < ApplicationController

  def index
    @likes = Like.all
    render json: @likes
  end

  def show
    @like = Like.find(params[:id])
    if @like
      render json: @like, status: :created, location: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  def create
    # updates total_likes of the image_set
    @image =Image.find(params[:like][:image_id])
    @image_set_id = @image[:image_set_id]
    @image_set = ImageSet.find(@image_set_id)
    @temp_likes = @image_set[:total_likes] + 1
    @image_set.update_attribute(:total_likes, @temp_likes)

    @like = Like.new(allowed_params)

    if @like.save
      render json: @like, status: :created, location: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  def update
    @like = Like.find(params[:id])

    if @like.update(allowed_params)
      render json: @like, status: :created, location: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @like = Like.find(params[:id])

    if @like.destroy
      render json: @like, status: :created, location: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end


  private

  def allowed_params
    params.require(:like).permit(:user_id, :image_id)
  end

end
