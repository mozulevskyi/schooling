class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :second_name
      t.integer :date_of_birth

      t.timestamps
    end
  end
end
