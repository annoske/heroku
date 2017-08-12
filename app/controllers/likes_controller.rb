class LikesController < ApplicationController
  def create
    @comment =Comment.find(params[:comment_id])
    @like = @comment.likes.create()
    redirect_to comment_path(@comment.id)
  end

  private
    def like_params
      params[:like].permit(:comment_id)
    end
end
