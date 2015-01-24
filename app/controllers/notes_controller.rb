class NotesController < ApplicationController
  def new
  end

  def create
    @note = Note.new note_params
    if @note.save
      @username = @note.username
      @note_id = @note.note_id
      redirect_to note_path(@username,@note_id)
    else
      render "homes/index"
    end
  end

  def show
    @note = Note.find_by_note_id(params[:note_id])
  end

  def user
    @notes =Note.where("username = ?", params[:username])
  end

  private
    
    def note_params
      params.require(:note).permit(:time_at,
                                   :body,
                                   :username,
                                   :note_id)
    end
end
