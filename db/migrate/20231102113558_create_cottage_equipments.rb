class CreateCottageEquipments < ActiveRecord::Migration[7.0]
  def change
    create_table :cottage_equipments do |t|
      t.references :equipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
