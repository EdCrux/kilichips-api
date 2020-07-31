Rails.application.routes.draw do
  
  #constraints subdomain: 'api'do
    namespace :api, path: "", defaults: {format: :json} do
      namespace :v1 do
        mount_devise_token_auth_for 'User', at: 'auth'
        get '/health' , to: 'health#health'
        resources :categories_publication, only: %i[index  ]
      end
    end
  #end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
