class Equipment < ApplicationRecord
  belongs_to :cottage
  has_one_attached :icon
  validates :name, presence: true
  validates :category, inclusion: { in: ["Salle de bain", "Chambre et linge", "Divertissement", "Famille", "Chauffage et climatisation",
  "Sécurité à la maison", "Internet et bureau", "Cuisine et salle à manger", "Caractéristiques de l'emplacement",
  "Extérieur", "Parking et installations", "Services"] }

  def toggle_has
    self.has = !self.has
    self.save
  end
end
