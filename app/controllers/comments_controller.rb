class CommentsController < ApplicationController

before_action :set_comment,only:[:edit,:show,:update,:destroy]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment =Comment.new(comment_params)
    if @comment.save
      redirect_to comments_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to comments_path
    else
      render 'edit'
    end
  end

  def destroy
    @comment.destroy
    redirect_to comments_path
  end

  private
    def comment_params
      params[:comment].permit(:title)
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end
end
