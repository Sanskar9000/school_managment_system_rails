class AddPasswordDigestToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :password_digest, :string
    add_column :students, :password_digest, :string
  end
end
