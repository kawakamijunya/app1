Rails.application.routes.draw do
  get 'books/new'
  get 'books'=>'books#index'
  get 'books/:id'=>'books#show',as:'book'
  get 'books/:id'=>'books#edit',as:'book'
  get '/top' => 'homes#top'
  post 'books'=> 'books#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
