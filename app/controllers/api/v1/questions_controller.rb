class V1::QuestionsController < ApplicationController
  respond_to :json

  def show
    respond_with Question.find(params[:id])
  end
end
