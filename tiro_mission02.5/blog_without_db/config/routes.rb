Rails.application.routes.draw do
  post '/articles/show' => 'articles#show', :as => "show_article"
  get '/articles/edit/:id' => 'articles#edit', :as => "edit_article"
  post "/" => "articles#index", :as => "add_article"
  post "/" => "articles#index", :as => "delete_article"
  root 'articles#index'
  # resource :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
