Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :bands, only: [:index, :create, :new, :edit, :show, :update, :destroy]
  resources :albums, only: [:new, :create, :edit, :show, :update, :destroy]
  resources :tracks, only: [:new, :create, :edit, :show, :update, :destroy]
end






# get 'tracks/new'
#
# get 'tracks/create'
#
# get 'tracks/edit'
#
# get 'tracks/show'
#
# get 'tracks/update'
#
# get 'tracks/destroy'
#
# get 'albums/new'
#
# get 'albums/create'
#
# get 'albums/edit'
#
# get 'albums/show'
#
# get 'albums/update'
#
# get 'albums/destroy'
#
# get 'bands/index'
#
# get 'bands/create'
#
# get 'bands/new'
#
# get 'bands/edit'
#
# get 'bands/show'
#
# get 'bands/update'
#
# get 'bands/destroy'
