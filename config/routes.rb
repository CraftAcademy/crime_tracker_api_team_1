Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/auth', skip: [:omniauth_callbacks]
  namespace :api, constraints: { format: 'json'} do
    namespace :v1 do
      resources :reports, only: [:index]
  end
end
end
