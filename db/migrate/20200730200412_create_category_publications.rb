class CreateCategoryPublications < ActiveRecord::Migration[6.0]
  def change
    create_table :category_publications do |t|
      t.string :name

      t.timestamps
    end
  end
end
