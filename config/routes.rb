Rails.application.routes.draw do
  devise_for :users
  root 'home#home'
  get 'privacy_policy', to: 'home#privacy_policy', as: 'privacy_policy'
end
