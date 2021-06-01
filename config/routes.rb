Rails.application.routes.draw do
  root to: 'abouts#show'

  get '/faq', to: 'faq#index'
  resource :about, only: [:show]
end
