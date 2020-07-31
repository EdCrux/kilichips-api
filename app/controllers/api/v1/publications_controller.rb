class API::V1::PublicationsController < APIController

  def index
    @publication = Publication.all
    render json: PublicationSerializer.new(@publication).serializable_hash, status: :ok
  end
end
