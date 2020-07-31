module API
  module V1
    class HealthController < APIController
      def health
        render json: { api: 'OK' }, status: 200
      end
    end
  end
end
