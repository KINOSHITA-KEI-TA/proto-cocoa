Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :comments, only: :create
  end
  root "events#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
