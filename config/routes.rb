Rails.application.routes.draw do

  resources :videos, except: [:new, :edit]
  resources :photos, except: [:new, :edit]

  resources :users, defaults: {format: :json}, only: [:show, :index, :create] do
    post 'sign_in', on: :collection
  end

  get 'amazon/sign_key'

end

