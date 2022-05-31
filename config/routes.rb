Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :plants, only: [:index, :show]
  namespace :my_garden do
    resources :user_plants, only: [:create, :index, :show, :destroy ] do
      collection do
        get :needing_attention
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
