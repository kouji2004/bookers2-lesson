Rails.application.routes.draw do


  devise_for :users
   get "home/about"=>"homes#about", as:"about"
   root to:"homes#top"

  resources :books, only: [:new, :index, :show, :edit, :create, :destroy, :update]do
   resources :book_comments, only: [:create,:destroy]
    resource :favorite,only: [:create,:destroy]
  end
  resources :users, only: [:show, :edit, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
