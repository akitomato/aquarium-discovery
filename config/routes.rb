Rails.application.routes.draw do
  devise_for :users
  root to: "aquarium_discoveries#index"
  resources :animals, only: [] do
    resources :comments
    collection do
      get 'search'
    end
  end
end
