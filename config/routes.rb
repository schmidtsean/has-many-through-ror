Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    resources :simons do
      resources :dpls
    end
    get 'simonUser', to: 'simons#users'
    get 'dplUser', to: 'dpls#dplUsers'
  end
end