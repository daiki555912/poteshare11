class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new(params.permit(:roomname, :roomabout, :cost, :address, :image, :user_id))
  end

  def create
    @room = Room.create(room_params)
    @room.user_id = current_user.id
    if @room.save
      redirect_to new_booking_path(@room.id)
    else
      render "new"
    end
  end

  def search
    @results = @search.result
  end

  private
  def room_params
    params.require(:room).permit(:roomname, :roomabout, :cost, :address, :image, :user_id)
  end
end
