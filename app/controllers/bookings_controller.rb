class BookingsController < ApplicationController
  def new
    @yacht = Yacht.find(params[:yacht_id])
    @booking = Booking.new
  end

  def create
    @yacht = Yacht.find(params[:yacht_id])
    @booking = Booking.new(booking_params)
    @booking.agreed_price = @yacht.price
    @booking.user_id = current_user
    @booking.yacht = @yacht
    if @booking.save
      redirect_to yacht_path(@yacht)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:yacht).permit(:start_date, :end_date)
  end
end
