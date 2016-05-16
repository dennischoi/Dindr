Rails.application.routes.draw do

<<<<<<< HEAD

  get 'restaurants/index'

  get 'restaurants/show'

=======
>>>>>>> 783917f1e1ee6493af502419e5ed6af2fa0babba
  root 'homes#index'

  get 'login' => 'sessions#new', :as => :login
  post 'create' => 'sessions#create'
  delete 'logout' => 'sessions#destroy', :as => :logout
  get 'game' => 'pictures#index', :as => :game

  resources :homes, only: %i(index)
  #  will this work we shalll see
  resources :votes
  resources :cuisines, except: %i(destroy edit update)
  resources :tags, except: %i(destroy edit update)
  resources :users, except: %i(destroy index)
  resources :pictures, except: %i(index)

  namespace :admin do
    resources :pictures
  end

end
