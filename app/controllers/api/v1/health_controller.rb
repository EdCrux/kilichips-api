class API::V1::HealthController < ApplicationController
  def health
    render json: { api: 'OK' }, status: 200
  end
end
