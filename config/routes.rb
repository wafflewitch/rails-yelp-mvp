Rails.application.routes.draw do
  get 'reviews/new'

  get 'restaurants/index'

  get 'restaurants/show'

  get 'restaurants/new'

  get 'restaurants/edit'

  get 'restaurants/:id', to: "restaurants#show"

  get 'restaurants/:restaurant_id/reviews', to: "reviews#index"

  get 'restaurants/:restaurant_id/reviews/new', to: "reviews#new"

  post 'restaurants/:restaurant_id/reviews', to: "reviews#create"

  get 'reviews/:id', to: "reviews#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create, :show ]
  end
end
