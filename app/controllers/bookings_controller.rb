class BookingsController < ApplicationController
  def index
    @mybookings = Booking.where(user_id: current_user.id)
  end

  def new
    @yacht = Yacht.find(params[:yacht_id])
    @booking = Booking.new
  end

  def create
    @yacht = Yacht.find(params[:yacht_id])
    @booking = Booking.new(booking_params)
    @booking.agreed_price = @yacht.price
    @booking.user_id = current_user.id
    @booking.yacht = @yacht
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:booking][:status]
    @booking.save
    redirect_to myyachts_yachts_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
