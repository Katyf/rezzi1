Rails.application.routes.draw do

  resources :users, defaults: {format: :json}, only: [:show, :index, :create] do
    post 'sign_in', on: :collection
    resources :videos, except: [:new, :edit]
    resources :photos, except: [:new, :edit]
    resources :bio, except: [:new, :edit]
  end

  get 'amazon/sign_key'

end
