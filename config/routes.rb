Rails.application.routes.draw do
  root 'home#home'
  get 'privacy_policy', to: 'home#privacy_policy', as: 'privacy_policy'
end
