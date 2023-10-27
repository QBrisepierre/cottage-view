class ChangeBirthdayDateFromStringToDateForUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :birthday_date, :date, using: 'birthday_date::date'
  end
end
