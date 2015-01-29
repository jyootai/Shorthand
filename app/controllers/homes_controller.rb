class HomesController < ApplicationController
  def index
    @note = Note.new
  end

  def search
    @query = params[:note_search][:query]
    if !@query.blank?
      redirect_to user_path(@query)
    else
      redirect_to root_path
      #TODO flash message
    end
  end
end
