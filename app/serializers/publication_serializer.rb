class PublicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :category_publication_id

  attribute :category_publication do |object|
    object.category_publication.as_json
  end
end
