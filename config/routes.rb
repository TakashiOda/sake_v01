Rails.application.routes.draw do
  # Home 静的ページ
  root 'home#home'
  get 'privacy_policy', to: 'home#privacy_policy', as: 'privacy_policy'
  # コンタクトページ
  get 'contact/index', to: 'contact#index', as: 'contact_index'
  post 'contact/confirm', to: 'contact#confirm', as: 'contact_confirm'
  post 'contact/done', to: 'contact#done', as: 'contact_done'
  #

  # Devise
  devise_for :users, :controllers => {
      :sessions      => "users/sessions",
      :registrations => "users/registrations",
      # :passwords     => "users/passwords",
      :omniauth_callbacks => "users/omniauth_callbacks"
  }
end
