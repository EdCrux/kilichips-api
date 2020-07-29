Rails.application.routes.draw do
  namespace :api, :path => "", :constraints => {:subdomain => "api"}, :defaults => {:format => :json} do
    namespace :v1 do
      
    end
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
