class NotesController < ApplicationController
  def new
    @note = Note.new
  end

  def destroy
    @note = Note.find params[:id]
  end
end
