Rails.application.routes.draw do
  get 'menu/category'
  get 'menu/by_category'
  get 'menu/:id', to: 'menu#show', as: 'menu_item'
  get 'menu/edit'
  get 'menu/update'
  get 'menu/new'
  get "pages/gallery", to: "pages#gallery"
  get "pages/gallery", to: "pages#contact"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "pages#index"
  resource :menu, only: [:index, :new, :edit] do
    collection do
      get :category, as: 'category'
    end
  end

  resources :menu_items, only: [:show]
  resources :menu_items, only: [:show]

  resource :reservations do
    resource :tables
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and 203uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
