class CottagesController < ApplicationController
  before_action :set_params, only: [:show]

  def index
    @cottages = Cottage.all
  end

  def show
    @user = User.find(@cottage.user_id)
    created_at = @user.created_at.strftime("%Y-%m-%d").to_date
    @date_since = ( Date.today - created_at ).to_i
    @categories = ["Salle de bain", "Chambre et linge", "Divertissement", "Famille", "Chauffage et climatisation",
      "Sécurité à la maison", "Internet et bureau", "Cuisine et salle à manger", "Caractéristiques de l'emplacement",
      "Extérieur", "Parking et installations", "Services"
    ]
    @have_equipments = Equipment.all.select do |equipment|
      @cottage.equipments.exists?(equipment.id)
    end
    @dont_equipments = Equipment.all.select do |equipment|
      !@cottage.equipments.exists?(equipment.id)
    end
  end

  def new
    @cottage = Cottage.new
  end

  def create
    
  end

  private

  def set_params
    @cottage = Cottage.find(params[:id])
  end

  def cottage_params
    params.require(:cottage).permit(:name, :name, :description, :total_bedroom, :total_bed, :total_bathroom, :total_occupancy, :address, :price, :user_id, photos: [] )
  end
end
