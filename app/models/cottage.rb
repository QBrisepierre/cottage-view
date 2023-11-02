class Cottage < ApplicationRecord
  belongs_to :user
  has_many :cottage_equipments, dependent: :destroy
  has_many :equipments, through: :cottage_equipments
  has_many_attached :photos

end
