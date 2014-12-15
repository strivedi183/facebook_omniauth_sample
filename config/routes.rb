Rails.application.routes.draw do
  root 'homepage#index'
  devise_for :users, controllers: {omniauth_callbacks: :omniauth_callbacks}
end
