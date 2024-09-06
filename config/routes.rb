Rails.application.routes.draw do
  get 'menuitems/index'
  get 'menuitems/show'
  get "pages/gallery", to: "pages#gallery"
  get "pages/gallery", to: "pages#contact"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "home#index"
  resource :menus do
    resource :categories do
      resource :menu_items do
        resource :orders
      end
    end
  end
  resource :reservations do
    resource :tables
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and 203uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
