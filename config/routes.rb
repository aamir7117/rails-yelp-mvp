Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/edit'
  get 'restaurants/new'
  get 'restaurants/index'
  get 'restaurants/edit'
  get 'restaurants/show'
  # get 'restaurant/new'
  # get 'restaurant/index'
  # get 'restaurant/edit'
  # get 'restaurant/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: %I[new create update edit]
  end
end
