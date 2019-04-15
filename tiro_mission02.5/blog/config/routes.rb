Rails.application.routes.draw do
  get '/articles/:id' => 'articles#show', :as => "show_article"
  get '/articles/edit/:id' => 'articles#edit', :as => "edit_article"
  post "/articles/destroy" => "articles#destroy", :as => "destroy_articles"

  root 'articles#index'
  resource :articles
  # patch "/articles/:id" => "articles#show", as:"show_articles"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
