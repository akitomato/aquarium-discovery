Rails.application.routes.draw do
  devise_for :users
  root to: "aquarium_discoveries#index"
  resources :animals do
    resources :comments
    collection do
      get 'search'
    end
  end
  resources :aquariums do
    resources :reviews
    collection do
      get 'search'
    end
  end
end
