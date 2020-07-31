class API::V1::HealthController < ApiController
  def health
    render json: { api: 'OK' }, status: 200
  end
end
