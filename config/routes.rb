Ned::Application.routes.draw do
  resources :users do
      resources :contacts, :only => [:index, :create]
  end
  resources :contacts, :only => [:show, :update, :destroy]
  resources :contact_shares, :only => [:create, :destroy]
end
