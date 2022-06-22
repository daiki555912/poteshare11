class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @room = Room.find_by(id: params[:format])
  end

  def confirm
    @booking = Booking.create(booking_params)
    @room = Room.find(@booking.room_id)
    @booking.days = (@booking.last_date - @booking.start_date)
    @booking.allcost = @room.cost * @booking.people * @booking.days
    if @booking.invalid? 
    end
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.days = (@booking.last_date - @booking.start_date)
    @booking.allcost = @room.cost * @booking.people * @booking.days
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "new"
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.days = (@booking.last_date - @booking.start_date)
    @room = Room.find(@booking.room_id)
    @booking.allcost = @room.cost * @booking.people * @booking.days
      if @booking.update(booking_params)
        flash[:notice] = "予約（ID:「#{@booking.id}」）が完了しました"
        redirect_to booking_path
      else
        render "new"
      end

  end

  def index
    @bookings = Booking.all
    @rooms = Room.all
  end

  def show
    @booking = Booking.find(params[:id])
    @room = Room.find(@booking.room_id)
  end

  def edit
  end

  


  private
  def booking_params
    params.require(:booking).permit(:user_id, :room_id, :start_date, :last_date, :people, :days, :allcost)
  end
 
end