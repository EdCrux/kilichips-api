module API
 module V1
  class PublicationsController < APIController

      def index
        @publications = Publication.all
        render json: PublicationSerializer.new(@publications).serializable_hash, status: :ok
      end

      def show
        @publication = Publication.find(params[:id])
        render json:  PublicationSerializer.new(@publication).serializable_hash, status: :ok
      end
    end  
  end
end