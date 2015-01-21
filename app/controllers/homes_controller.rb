class HomesController < ApplicationController
  def index
    @note = Note.new
  end
end
