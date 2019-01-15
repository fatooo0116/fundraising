Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/pfadmin', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    # omniauth_callbacks: "users/omniauth_callbacks"
    unlocks: 'users/unlocks:'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'home/send_mail' => 'home#send_mail'
end
