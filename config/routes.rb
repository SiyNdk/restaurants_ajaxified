Rails.application.routes.draw do
  root to: 'pages#home'

  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
