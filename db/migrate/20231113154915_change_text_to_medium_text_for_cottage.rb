class ChangeTextToMediumTextForCottage < ActiveRecord::Migration[7.0]
  def change
    change_column :cottages, :description, :text, limit: 70000
  end
end
