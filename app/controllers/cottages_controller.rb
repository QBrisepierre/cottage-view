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
    @equipments = Equipment.all
  end

  def create
    @cottage = Cottage.new(cottage_params)
    @cottage.user_id = current_user.id
    if @cottage.save
      params[:cottage][:equipment_ids].each do |equip|
        cottage_equip = CottageEquipment.new(cottage_id: @cottage.id, equipment_id: equip.to_i)
        cottage_equip.save
      end
      redirect_to cottage_path(@cottage)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_params
    @cottage = Cottage.find(params[:id])
  end

  def cottage_params
    params.require(:cottage).permit(:name, :name, :description, :total_bedroom, :total_bed, :total_bathroom, :total_occupancy, :address, :price, :user_id, photos: [] )
  end
end
