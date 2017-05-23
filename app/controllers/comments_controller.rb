class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    @comment.question_id=params[:question_id]
    @comment.content=params[:comment]
    @comment.save
    redirect_to "/my-secret-view"
  end

  def delete
    c=Comment.find(params[:comment_id])
    c.destroy
    redirect_to "/my-secret-view"
  end
end
