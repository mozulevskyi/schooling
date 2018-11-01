class CreateRectangles < ActiveRecord::Migration[5.1]
  def change
    create_table :rectangles do |t|
      t.string :sides
      t.string :corners

      t.timestamps
    end
  end
end
