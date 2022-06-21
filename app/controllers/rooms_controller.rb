class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
  end

  def new
    @room = Room.new(params.permit(:roomname, :roomabout, :cost, :address, :image, :room_id))
  end

  def create
    @room = Room.new(room_params)
    @room.user_id = current_user.id
    @room.save
    binding.pry
    redirect_to room_path(@room.id)
  end

  private
  def room_params
    params.require(:room).permit(:room_id, :roomname, :roomabout, :cost, :address, :image)
  end
end
