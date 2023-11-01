class Equipment < ApplicationRecord
  has_one_attached :profile_photo
  validates :name
end
