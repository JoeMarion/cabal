Rails.application.routes.draw do

  resources :home
  resources :network
  resources :conversations do
    resources :messages
  end

  root 'home#index'

end
