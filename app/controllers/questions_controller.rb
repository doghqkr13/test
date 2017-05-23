class QuestionsController < ApplicationController
  def index
    @qs = Question.all
  end
  
  def new
  end

  def create
    @q=Question.new
    @q.name =params[:input_name]
    @q.content =params[:input_content]
    @q.save
  end

  def delete
    q = Question.find(params[:question_id])
    q.destroy
    redirect_to "/my-secret-view"
  end
  
  def edit
    @question=Question.find(params[:question_id])
  end
  
  def update
    @question=Question.find(params[:question_id])
    @question.name=params[:input_name]
    @question.content=params[:input_content]
    @question.save
    redirect_to "/my-secret-view"
  end
end
