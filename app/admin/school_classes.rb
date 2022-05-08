ActiveAdmin.register SchoolClass, as: "Class" do
  permit_params :name, :session_year  

  index do
    selectable_column
    id_column
    column :name
    column :session_year
    column "students" do |s|
      s.students.count
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :session_year
      row "students" do |s|
        s.students.count
      end
    end
  end



end
