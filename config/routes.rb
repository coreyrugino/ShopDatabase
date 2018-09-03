Rails.application.routes.draw do
  #
  # get 'tools/index'
  # get 'tools/show'
  # get 'tools/new'
  resources :tools

  # RailsAdmin gem
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # get 'home/index'
  get 'dashboard/index'
  devise_for :users
  resources :users
  resources :timecards #do
  #   collection do
  #     get :clock_out
  #   end
  # end

  # get "add_movie_to_likes", to: "users#add_movie_to_likes"
  # get "timecard_punch", to: "timecards#timecard_punch"
  get "clock_out", to: "timecards#clock_out"
  get "clock_in", to: "timecards#clock_in"

  # get "timecard_path", to: "timecards#edit", via: [:patch]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
