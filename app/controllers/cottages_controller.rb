class CottagesController < ApplicationController
  before_action :set_params, only: [:show]
  def index
    @cottages = Cottage.all
  end

  def show
    
  end

  def new
    @cottage = Cottage.new
  end

  def create
    @cottage = Cottage.new(cottage_params)
    @cottage.user = current_user
    if @cottage.save
      params[:cottage][:equipments].each do |equip|
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
    params.require(:cottage).permit(:name, :description, :user_id)
  end
end
