Rails.application.routes.draw do
  root to: 'home#index'

  get 'home', to: 'home#index'
  get 'cookie-policy', to: 'cookie_policy#index'
end
