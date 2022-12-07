Rails.application.routes.draw do
   resources :books
   root to: 'homes#top' #『/』でトップ画面を表示
  #get 'books/new'
  #get 'books'=>'books#index'
  #get 'books/:id'=>'books#show',as:'show_book'
  #get 'books/:id/edit'=>'books#edit',as:'edit_book'
  #get '/top' => 'homes#top'
  #post 'books'=>'books#create'
  #patch 'books/:id'=>'books#update',as:'update_book'
  #delete 'books/:id'=>'books#destroy',as:'destoroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
