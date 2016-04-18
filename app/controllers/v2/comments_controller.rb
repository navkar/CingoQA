class V2::CommentsController < ApplicationController
  respond_to :json

  def show
    respond_with "sample rake comment"
  end
end
