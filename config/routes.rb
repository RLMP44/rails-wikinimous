Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Display all articles
  get 'articles', to: 'articles#index'
  # Create a new article
  # New must be before Show
  get 'articles/new', to: 'articles#new', as: :new_article
  post 'articles', to: 'articles#create'
  # Show specific article
  get 'articles/:id', to: 'articles#show', as: :article
  # Edit a task
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'
  # Delete a task
  delete 'articles/:id', to: 'articles#destroy'
end
