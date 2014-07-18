Rails.application.routes.draw do

  root :to => NotesIndexApp

  get    'notes/new'          => 'notes#new'
  get    '/notes/:id/destroy' => 'notes#destroy'

  get    '/notes'             => NotesIndexApp
  post   '/notes'             => NotesCreateApp
  get    '/notes/:id'         => NotesShowApp
  delete '/notes/:id'         => NotesDeleteApp, as: 'note_destroy'
end
