class CategoryPublicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  
  has_many :publications
end
