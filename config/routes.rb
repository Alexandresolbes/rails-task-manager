Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/tasks', to: 'tasks#index'
  # root "articles#index"

  # Show root path
  get '/tasks/new', to: 'tasks#new', as: :task_new
  post '/tasks', to: 'tasks#create'

  delete '/tasks/:id', to: 'tasks#destroy'

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  get '/tasks/:id', to: 'tasks#show', as: :task
end
