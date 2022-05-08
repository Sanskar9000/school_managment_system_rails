class CreateSchoolClassTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :school_class_teachers do |t|
      t.integer :school_class_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
