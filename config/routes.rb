Rails.application.routes.draw do
  # root route at books/index
  root "user_books#index"

  # books route
  resources :books
  resources :user_books
  resources :users

  resources :books do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
