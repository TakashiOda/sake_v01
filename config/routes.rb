Rails.application.routes.draw do
  get 'contact/index', to: 'contact#index', as: 'contact_index'
  get 'contact/confirm'
  get 'contact/done'
  devise_for :users
  root 'home#home'
  get 'privacy_policy', to: 'home#privacy_policy', as: 'privacy_policy'
end
