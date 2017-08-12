class TasksController < ApplicationController
  def create
    @comment =Comment.find(params[:comment_id])
    @task = @comment.tasks.create(task_params)
    redirect_to comment_path(@comment.id)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to comment_path(params[:comment_id])
  end
  private
    def task_params
      params[:task].permit(:title)
    end
end
