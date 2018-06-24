Rails.application.routes.draw do
  # CRUD for Articles resource
  resources :articles

  # Show number of likes which belongs to article, add like to article
  get 'articles/:id/likes', to: 'article#likes'
  post 'articles/:id/likes', to: 'article#likes'

  # Show number of dislikes which belongs to article, add dislike to article
  get 'articles/:id/dislikes', to: 'article#dislikes'
  post 'articles/:id/dislikes', to: 'article#dislikes'
end
