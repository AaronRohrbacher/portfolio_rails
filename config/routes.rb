Rails.application.routes.draw do
  root :to => 'home#index'


  devise_for :users

  resources :users do
    resources :portfolios do
      resources :projects
      resources :skills
    end
    resources :projects
    resources :skills
  end

end
