class Cottage < ApplicationRecord
  belongs_to :user
  has_many :equipments, dependent: :destroy
  has_many_attached :photos
end
