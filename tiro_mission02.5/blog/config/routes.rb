Rails.application.routes.draw do
  get '/articles/:id' => 'articles#show', :as => "show_article"

  root 'articles#index'
  resource :articles
  # patch "/articles/:id" => "articles#show", as:"show_articles"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
