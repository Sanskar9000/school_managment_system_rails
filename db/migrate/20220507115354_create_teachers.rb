class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :phone_no
      t.string :qualification
      t.string :address

      t.timestamps
    end
  end
end
