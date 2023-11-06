class Cottage < ApplicationRecord
  belongs_to :user
  has_many :cottage_equipments, dependent: :destroy
  has_many :equipments, through: :cottage_equipments
  has_many_attached :photos

  validates :name, uniqueness: true, length: { maximum: 30 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :total_bedroom, :total_bed, :total_bathroom, :total_occupancy, presence: true, inclusion: 1..10
  validates :price, :address, presence: true
  validates_associated :equipments

  attr_writer :current_step

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[form_step_one form_step_address form_step_room form_step_two form_step_equipments]
  end

  def next_step
    self.current_step = steps[steps.index(current_step) + 1]
  end
end
