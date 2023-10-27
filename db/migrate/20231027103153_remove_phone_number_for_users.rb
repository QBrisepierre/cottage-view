class RemovePhoneNumberForUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :phone_number, :integer
  end
end
