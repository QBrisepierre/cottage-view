class BookingController < ApplicationController
  before_action :set_params, only: [:show]
  
  def show
    @start_date = @booking.start_date.strftime("%Y-%m-%d").to_date
    @end_date = @booking.end_date.strftime("%Y-%m-%d").to_date
  end

  def create
    @booking = Booking.new(booking_params)
  end

  private

  def set_params
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :travellers, :price, :total, :user_id, :cottage_id )
  end
end
