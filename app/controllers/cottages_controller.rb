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
    @cottage = Cottage.new
    @cottage.user = current_user
    @cottage.current_step = session[:cottage_step]
    @cottage.next_step
    session[:cottage_step] = @cottage.current_step
    render :new, status: :multiple_choices
    #if @cottage.save
    #  params[:cottage][:equipments].each do |equip|
    #    cottage_equip = CottageEquipment.new(cottage_id: @cottage.id, equipment_id: equip.to_i)
    #    cottage_equip.save
    #  end
    #  redirect_to cottage_path(@cottage)
    #else
    #  render :new, status: :unprocessable_entity
    #end
  end

  private

  def set_params
    @cottage = Cottage.find(params[:id])
  end

  def cottage_params
    params.require(:cottage).permit(:name, :description, :total_bedroom, :total_bed, :total_bathroom, :total_occupancy, :address, :price, :user_id)
  end
end
