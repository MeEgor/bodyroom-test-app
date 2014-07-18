class NotesCreateApp

  def self.call env
    host = env['HTTP_HOST']
    text = env['action_dispatch.request.path_parameters'][:text]
    note_params = env['rack.request.form_hash']['note']

    if Note.create note_params
      [301, {'Location' => "http://#{host}/notes"}, []]
    else
      [500, {}, []]
    end

    [301, {'Location' => "http://#{host}/notes"}, []]
  end

end
