class AddColumnCategoryForEquipment < ActiveRecord::Migration[7.0]
  def change
    add_column :equipment, :category, :string
  end
end
