class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :title
      t.text :description
      t.string :book_name

      t.timestamps
    end
  end
end
