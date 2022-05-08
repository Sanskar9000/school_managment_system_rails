ActiveAdmin.register Subject do
  permit_params :title, :description, :book_name

  index do
    selectable_column
    id_column
    column :title
    column :book_name
    actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :book_name
    end
  end
  
end
