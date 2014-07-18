class NotesIndexApp

  def self.call env
    @notes = Note.all
    path = "#{Rails.root}/app/views/notes/index.html.erb"
    response = ERB.new(File.read(path)).result(binding)

    [200, {}, [response]]
  end

end
