Rails.application.routes.draw do
  resources :book_users
  resources :users
  # resources :books

  root 'book_users#index'

  resources :books do
    member do
      get :delete
    end
  end
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
