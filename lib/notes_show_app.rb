class NotesShowApp
  def self.call env
    id = env['action_dispatch.request.path_parameters'][:id]
    note = Note.find(id)

    [200, {}, ["#{note.text} \n\n"]]
  end
end
