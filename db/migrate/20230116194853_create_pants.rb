class CreatePants < ActiveRecord::Migration[7.0]
  def change
    create_table :pants do |t|
      t.string :name
      t.string :size
      t.integer :length
      t.integer :waist
      t.string :type

      t.timestamps
    end
  end
end
