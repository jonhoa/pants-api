class AddImageToPants < ActiveRecord::Migration[7.0]
  def change
    add_column :pants, :image, :string
  end
end
