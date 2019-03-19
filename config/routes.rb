Rails.application.routes.draw do
  get 'contact/index', to: 'contact#index', as: 'contact_index'
  post 'contact/confirm', to: 'contact#confirm', as: 'contact_confirm'
  post 'contact/done', to: 'contact#done', as: 'contact_done'
  devise_for :users
  root 'home#home'
  get 'privacy_policy', to: 'home#privacy_policy', as: 'privacy_policy'
end
