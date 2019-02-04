Rails.application.routes.draw do
  resources :articles, only: %i[index show new create update]

  get '/articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch '/articles/:id', to: 'articles#update'
end
