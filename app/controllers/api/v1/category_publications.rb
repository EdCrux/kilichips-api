class API::V1::Publications < API::VI::ApiController
  def index
    @category_publication = 
    render json: @category_publication
  end
end