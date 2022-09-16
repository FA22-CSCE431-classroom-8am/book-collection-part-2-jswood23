Rails.application.routes.draw do
  resources :users
  # root route at books/index
  root "books#index"

  # books route
  resources :books

  # default route
  get ":controller(/:action(:id))"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
