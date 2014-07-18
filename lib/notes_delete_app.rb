class NotesDeleteApp

  def self.call env
    host = env['HTTP_HOST']
    id = env['action_dispatch.request.path_parameters'][:id]

    if Note.find(id).destroy
      [301, {'Location' => "http://#{host}/notes"}, []]
    else
      [500, {}, []]
    end
  end

end
