ActiveAdmin.register Teacher do
  permit_params :first_name, :last_name, :age, :email, :phone_no, :qualification, :address, :profile_image, :password, :password_confirmation


  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :phone_no
    column :age
    column :address
    column :qualification
    actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :phone_no
      row :age
      row :address
      row :qualification
      row "registration_date" do |t|
        t.created_at
      end
      row "classes" do |t|
        t.school_class       
      end
    end
  end

  sidebar "Other Details", only: :show do
    attributes_table_for teacher do
      row :full_name do |s|
        "#{s.first_name} #{s.last_name}"
      end
      row :profile_image do |ad|
        image_tag url_for(ad.profile_image) if ad.profile_image.attached?
      end
    end
  end
  
  
  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :age
      f.input :email
      f.input :phone_no
      f.input :qualification
      f.input :address
      f.input :school_class_ids, :label => 'Classes', :as => :select, multiple: true , :collection => SchoolClass.all.map{|u| [u.name, u.id]}
      f.input :password
      f.input :password_confirmation
      f.input :profile_image, as: :file
    end
    f.actions
  end
  
end
