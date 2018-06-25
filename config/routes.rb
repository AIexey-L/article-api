Rails.application.routes.draw do
  # CRUD for Articles resource
  resources :articles

  # Show number of likes which belongs to article
  get 'articles/:id/likes', to: 'articles#likes'

  # Show number of dislikes which belongs to article
  get 'articles/:id/dislikes', to: 'articles#dislikes'
end
