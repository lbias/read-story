Rails.application.routes.draw do
  root 'stories#index'

  resources :stories do
    resources :votes
  end

  resource :session
end
