Rails.application.routes.draw do
  root 'pictures#index'
  get 'pictures' => 'pictures#index'

  post 'pictures' => 'pictures#create'
  get 'pictures/new' => 'pictures#new'

  get 'pictures/:id' => 'pictures#show'

  get 'pictures/:id/edit' => "pictures#edit"
  patch 'pictures/:id' => "pictures#update"

  delete 'pictures/:id' => 'pictures#destroy'
  #
  # post 'users' => 'users#create'
  # get 'users/new' => 'users#new'

  resource :users, only: %i(create new destroy)

  resource :sessions, only: %i(create new destroy)

end
