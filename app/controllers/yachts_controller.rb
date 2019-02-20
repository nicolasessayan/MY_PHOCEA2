class YachtsController < ApplicationController
  before_action :set_yacht, only: [:show, :edit, :update, :destroy]

  def index
    @yachts = Yacht.all
  end

  def myyachts
    @myyachts = Yacht.all.select{ |obj| obj.user_id == current_user.id }
    @bookings = Booking.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user = current_user
    if @yacht.save
      redirect_to yacht_path(@yacht)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @yacht.update(yacht_params)
    redirect_to myyachts_yachts_path
  end

  def destroy
    @yacht.destroy
    if @yacht.save
      redirect_to yachts_path
    else
      render :edit
    end
  end

  private

  def set_yacht
    @yacht = Yacht.find(params[:id])
  end

  def yacht_params
    params.require(:yacht).permit(:name, :port, :price, :passengers_capacity, :photo)
  end

end
