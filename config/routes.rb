Rails.application.routes.draw do
  root 'stories#index'

  resources :stories do
    resources :votes
    collection do
      get 'bin'
    end
  end

  resource :session

  resources :users

  resources :tags
end
