class AddSomeInfosToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :description, :text
    add_column :users, :phone_number, :integer
    add_column :users, :birthday_date, :string
  end
end
