class CreateBadPupils < ActiveRecord::Migration[5.1]
  def change
    create_table :bad_pupils do |t|
      t.string :first_name
      t.string :middle_name
      t.string :second_name
      t.integer :date_of_birth

      t.timestamps
    end
  end
end
