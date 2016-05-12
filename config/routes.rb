Rails.application.routes.draw do


  get 'votes/create'

  get 'votes/update'

  get 'votes/index'

  get 'votes/new'

  get 'votes/edit'

  root 'homes#index'

  get 'login' => 'sessions#new', :as => :login
  post 'create' => 'sessions#create'
  delete 'logout' => 'sessions#destroy', :as => :logout
  get 'game' => 'pictures#index', :as => :game

  resources :homes, only: %i(index)
  #  will this work we shalll see




  resources :cuisines, except: %i(destroy edit update)
  resources :tags, except: %i(destroy edit update)
  resources :users, except: %i(destroy index)
  resources :pictures, except: %i(index)


  resources :admins



  # get 'users/update'
  # get 'users/new'
  #
  # get 'users/create'
  #
  # get 'users/show'
  #
  # get 'users/edit'
  # get 'cuisines/index'
  #
  # get 'cuisines/show'
  #
  # get 'cuisines/new'
  #
  # get 'cuisines/create'
  #
  # get 'tags/show'
  #
  # get 'tags/new'
  #
  # get 'tags/create'
  #
  # get 'tags/index'

  # get 'pictures/index'
  #
  # get 'pictures/new'
  #
  # get 'pictures/create'
  #
  # get 'pictures/show'
  #
  # get 'pictures/edit'
  #
  # get 'pictures/update'
  #
  # get 'pictures/destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
