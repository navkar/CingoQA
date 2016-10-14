class AnswersController < ApplicationController

  def create
    question = Question.find(params[:answer][:question_id])
    answer = question.answers.create(answer_params)
    begin
      # Active job with Sucker punch
      MainMailer.notify_question_author(answer).deliver_later
    rescue
    end
    session[:current_user_email] = answer_params[:email]
    redirect_to question
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :email, :body)
  end

end
