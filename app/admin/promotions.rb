ActiveAdmin.register Promotion do
  permit_params :name, :price, :description, :image

  form do |f|
    f.inputs "Promotion" do
      f.input :name
      f.input :description
      f.input :price
      f.input :image, as: :file
    end
    f.actions
  end

  index do
    id_column
    column :name
    column :description
    column :image do |ad|
      image_tag url_for(ad.image), size: "100x60"
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :image do |ad|
        image_tag url_for(ad.image), size: "300x200"
      end
      row :description
    end
  end
end
