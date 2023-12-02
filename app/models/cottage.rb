class Cottage < ApplicationRecord
  belongs_to :user
  has_many :cottage_equipments, dependent: :destroy
  has_many :equipments, through: :cottage_equipments
  has_many :bookings
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, uniqueness: true, length: { maximum: 30 }, presence: true
  validates :description, presence: true, length: { maximum: 70000 }
  validates :total_bedroom, :total_bed, :total_bathroom, :total_occupancy, presence: true, inclusion: 1..10
  validates :address, presence: true
  validates :price, presence: true
  validates_associated :equipments, presence: true
end
