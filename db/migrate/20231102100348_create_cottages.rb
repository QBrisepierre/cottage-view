class CreateCottages < ActiveRecord::Migration[7.0]
  def change
    create_table :cottages do |t|
      t.string :name
      t.text :description
      t.integer :total_bedroom
      t.integer :total_bed
      t.integer :total_bathroom
      t.integer :total_occupancy
      t.string :address
      t.integer :price
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
