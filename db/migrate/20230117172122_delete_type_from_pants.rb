class DeleteTypeFromPants < ActiveRecord::Migration[7.0]
  def change
    remove_column :pants, :type, :string

    add_column :pants, :style, :string
  end
end
