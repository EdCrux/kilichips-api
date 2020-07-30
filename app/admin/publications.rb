ActiveAdmin.register Publication do

  # See permitted parameters documentation:
  permit_params :title, :content, :category_publication_id, :admin_user_id

  index do
    id_column
    column :title
    column :content
    actions
  end
end
