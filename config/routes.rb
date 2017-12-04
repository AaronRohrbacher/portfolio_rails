Rails.application.routes.draw do
  root :to => 'home#index'

  devise_for :users

  resources :users do
    resources :portfolios
    resources :projects
    resources :skills
  end
end
