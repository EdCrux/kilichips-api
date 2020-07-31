class Publication < ApplicationRecord  
  belongs_to :category_publication
  belongs_to :admin_user
  accepts_nested_attributes_for :category_publication
end
