class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @room = Room.find_by(id: params[:format])
  end

  def show
  end

  def new
    @booking = Booking.new(booking_params)
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "new"
    end
  end

  def edit
  end


  private
  def booking_params
    params.require(:booking).permit(:user_id, :room_id, :start_date, :last_date, :people, :booking_id)
  end
end
