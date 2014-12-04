class ApplicationController < ActionController::API
  @image_set = ImageSet.find(params[:id])
  @comment = Comment.find(params[:id])
  @tag = Tag.find(params[:id])
  @user = User.find(params[:id])

  def findObjects(Object, id)
    return Object.find(id)
  end
  @image_set = findObject(ImageSet, params[:id])

end
