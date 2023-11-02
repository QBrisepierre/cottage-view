class RemoveEquipmentForCottage < ActiveRecord::Migration[7.0]
  def change
    remove_column :cottages, :equipment_id, :bigint
  end
end
