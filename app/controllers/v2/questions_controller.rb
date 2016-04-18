class V2::QuestionsController < ApplicationController
  respond_to :json

  def show
    respond_with "sample data v2"
  end
end
