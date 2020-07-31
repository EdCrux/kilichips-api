class APIController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
end
