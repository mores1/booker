Rails.application.routes.draw do
  get 'books/top'
  post 'books' => "books#create"
  get 'books' => "books#index"
  get 'books/:id' => "books#show",as: "book"

  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => "books#update", as: "update_book"
  delete 'books/:id' => "books#destroy", as: "destroy_book"
  # get '/' => "homes#top"
  root to: "homes#top"
  get 'homes/index'
  get 'homes/show'
  get 'homes/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
