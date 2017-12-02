Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :portfolios do
      resources :projects do
        resources :skills
      end
    end
  end

end
