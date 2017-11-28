class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Question is saved!!"
      redirect_to "/"
    else
      flash[:alert] = "There was a problem adding question."
      redirect_to '/new'
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  private
  def question_params
    additional_info = {:user_id => current_user.id , :vote => 0}
    params.require(:question).permit(:title, :question_text).merge(additional_info)
  end
end
