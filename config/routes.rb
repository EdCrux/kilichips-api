Rails.application.routes.draw do
  use_doorkeeper do
    # No need to register client application
    skip_controllers :applications, :authorized_applications
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  #constraints subdomain: 'api'do
  namespace :api, path: "", defaults: {format: :json} do
    namespace :v1 do
      get '/health' , to: 'health#health'
      
      devise_for :users, controllers: {
        registrations: 'api/v1/users/registrations',
      }, skip: [:sessions, :password]
      
      resources :publications, only: [:index, :show]
    end
  end
  #end
end
