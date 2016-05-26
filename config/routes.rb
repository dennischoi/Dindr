Rails.application.routes.draw do


  resources :invitations

  resources :password_resets

  resources :restaurants, only: %i(index)

  root 'homes#index'

  get 'login' => 'sessions#new', :as => :login
  post 'create' => 'sessions#create'
  delete 'logout' => 'sessions#destroy', :as => :logout
  get 'game' => 'pictures#index', :as => :game

  resources :homes, only: %i(index)
  #  will this work we shalll see
  resources :votes, except: %i(destroy)

    delete 'votes' => 'votes#destroy'


  resources :tags, except: %i(destroy edit update)
  resources :users, except: %i(destroy)
  resources :pictures, except: %i(index)

  namespace :admin do
    resources :pictures
  end

  namespace :user do
      resources :cuisines, only: %i(index show)
  end


end
