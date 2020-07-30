class AddContentToPublications < ActiveRecord::Migration[6.0]
  def change
    add_column :publications, :content, :text
  end
end
