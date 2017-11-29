class ResponsesController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @response = @question.responses.new(response_params)
    if @response.save
      flash[:notice] = "Response is saved!!"
      redirect_to "/"
    else
      flash[:alert] = "There was a problem adding response."
      redirect_to "/"
    end
  end

  def response_params
    additional_info = {:user_id => current_user.id}
    params.require(:response).permit(:response_text).merge(additional_info)
  end
end
