class AddCottageReferencesForCottageEquipment < ActiveRecord::Migration[7.0]
  def change
    add_reference :cottage_equipments, :cottage, foreign_key: true
  end
end
