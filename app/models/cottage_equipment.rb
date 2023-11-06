class CottageEquipment < ApplicationRecord
  belongs_to :equipment
  belongs_to :cottage
end
