Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "pagecottage", to: "pages#page_cottage"
  resources :cottages
  resources :cottage_steps
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
