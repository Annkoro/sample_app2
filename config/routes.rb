Rails.application.routes.draw do
  root to:"homes#top"

  get 'lists/new'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  post '/lists' => 'lists#create'
  patch 'lists/:id' => 'lists#update', as: 'update_list_path'
  delete "lists/:id" => "lists#destroy", as: "destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
