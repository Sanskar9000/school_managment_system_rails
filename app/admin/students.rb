ActiveAdmin.register Student do
  permit_params :first_name, :last_name, :phone_no, :address, :age, :roll_no, :school_class_id, :profile_image, :password, :password_confirmation


  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :phone_no
    column :address
    column :age
    column :roll_no
    column :class
    actions
  end


  show do
    attributes_table do
      row :first_name
      row :last_name
      row :phone_no
      row :address
      row :age
      row :roll_no
      row :class
      row "registration_date" do |t|
        t.created_at
      end
    end
  end

  sidebar "Other Details", only: :show do
    attributes_table_for student do
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
      f.input :phone_no
      f.input :address
      f.input :age
      f.input :roll_no
      f.input :school_class_id, :label => 'Class', :as => :select, :collection => SchoolClass.all.map{|u| [u.name, u.id]}
      f.input :password
      f.input :password_confirmation
      f.input :profile_image, as: :file
    end
    f.actions
  end
  
end
