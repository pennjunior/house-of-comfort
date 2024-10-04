Rails.application.routes.draw do
  get 'menu/category', to: 'menu#category', as: 'menu_category'
  get 'menu/by_category', to: 'menu#by_category', as: 'menu_by_category'
  get 'menu/new', to: 'menu#new', as: 'menu_new'
  post 'menu', to: 'menu#create', as: 'create_menu'

  get 'menu/:id/edit', to: 'menu#edit', as: 'menu_edit'

  patch 'menu/:id', to: 'menu#update', as: 'update_menu'
  delete 'menu/:id', to: 'menu#destroy'

  get 'menu/:id', to: 'menu#show', as: 'menu_item'
  get "pages/gallery", to: "pages#gallery"
  get "pages/gallery", to: "pages#contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  root "pages#index"

  resource :reservations, except: [:destroy] do
    member do
      patch :cancel
    end
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and 203uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
