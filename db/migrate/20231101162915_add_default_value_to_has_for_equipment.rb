class AddDefaultValueToHasForEquipment < ActiveRecord::Migration[7.0]
  def change
    change_column :equipment, :has, :boolean, default: false
  end
end
