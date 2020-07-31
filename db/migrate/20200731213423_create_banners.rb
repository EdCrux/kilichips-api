class CreateBanners < ActiveRecord::Migration[6.0]
  def change
    create_table :banners do |t|
      t.string :type
      t.string :image_url
      t.timestamps
    end
  end
end
