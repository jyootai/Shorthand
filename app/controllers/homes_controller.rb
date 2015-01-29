class HomesController < ApplicationController
  def index
    @note = Note.new
  end

  def search
    @query = params[:note_search][:query]
      redirect_to user_path(@query)
  end
end
