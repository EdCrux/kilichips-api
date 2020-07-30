class API::V1::ApiController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  skip_before_action :verify_authenticity_token
end
