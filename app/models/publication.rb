class Publication < ApplicationRecord
  belongs_to :category_publication
  belongs_to :admin_user
end
