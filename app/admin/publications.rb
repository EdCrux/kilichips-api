ActiveAdmin.register Publication do

  # See permitted parameters documentation:
  controller do
    helper ActionText::Engine.helpers
  end

  permit_params :title, :content, :category_publication_id, :admin_user_id

  
  index do
    id_column
    column :title
    column :content
    actions
  end
end
