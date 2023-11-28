class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cottage

  validates :start_date, :end_date, presence: true
  validates :travellers, presence: true, inclusion: 1..10
  validates :price, :total, presence: true
end
