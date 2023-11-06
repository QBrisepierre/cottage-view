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
    @cottage.user_id = current_user.id if @cottage.user_id.nil?
    if @cottage.save
      session[:cottage_id] = @cottage.id
      redirect_to cottage_steps_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_params
    @cottage = Cottage.find(params[:id])
  end

  def cottage_params
    params.require(:cottage).permit(:name, :description, :total_bedroom, :total_bed, :total_bathroom, :total_occupancy, :address, :price, :user_id)
  end
end
