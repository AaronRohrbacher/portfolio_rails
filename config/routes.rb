Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :portfolios do
      resources :projects
      resources :skills
    end
  end

end
