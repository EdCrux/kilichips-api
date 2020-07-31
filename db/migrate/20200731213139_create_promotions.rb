class CreatePromotions < ActiveRecord::Migration[6.0]
  def change
    create_table :promotions do |t|
      t.string :name
      t.string :price
      t.text :description

      t.timestamps
    end
  end
end
