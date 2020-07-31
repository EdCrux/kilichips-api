class API::V1::PublicationsController < ApiController

  def index
    @publication = Publication.all
    render json: PublicationSerializer.new(@publication).serializable_hash, status: :ok
  end
end
