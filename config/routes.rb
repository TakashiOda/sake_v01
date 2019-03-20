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
      :passwords     => "users/passwords",
      :confirmations => "users/confirmations",
      :omniauth_callbacks => "users/omniauth_callbacks"
  }
  devise_scope :user do
    patch "users/confirmation", to: "users/confirmations#confirm"
    # get "users/sign_up", to: "users/registrations#new"
  end
end
