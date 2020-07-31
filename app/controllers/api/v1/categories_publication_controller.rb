class API::V1::CategoriesPublicationController < ApiController

  def index
    @category_publication = CategoryPublication.all
    render json: CategoryPublicationSerializer.new(@category_publication, include: [:publications]).serializable_hash, status: :ok
  end
end
