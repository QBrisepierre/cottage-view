class CottageStepsController < ApplicationController
  include Wicked::Wizard
  steps :rooms, :equipments, :photos, :name, :description

  def show
    @cottage = Cottage.find(session[:cottage_id])
    render_wizard
  end

  def update
    @cottage = Cottage.find(session[:cottage_id])
    case step
    when :equipments
      params[:cottage][:equipments].each do |equip|
        cottage_equip = CottageEquipment.new(cottage_id: @cottage.id, equipment_id: equip.to_i)
        cottage_equip.save
      end
    else
      @cottage.attributes = cottage_params
    end
    render_wizard @cottage
  end

  private

  def cottage_params
    params.require(:cottage).permit(:name, :description, :total_bedroom, :total_bed, :total_bathroom, :total_occupancy, :address, :price, :user_id, photos: [] )
  end
end
