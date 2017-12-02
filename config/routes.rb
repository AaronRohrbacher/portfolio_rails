Rails.application.routes.draw do
  root :to => 'home#index'

  devise_for :users

  resources :users do
    resources :portfolios do
      resources :projects do
        resources :skills
      end
    end
  end

end
