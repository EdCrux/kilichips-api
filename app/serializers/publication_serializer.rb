class PublicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :category_publication_id
end
