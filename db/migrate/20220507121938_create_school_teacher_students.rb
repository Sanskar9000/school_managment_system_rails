class CreateSchoolTeacherStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :school_teacher_students do |t|
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
