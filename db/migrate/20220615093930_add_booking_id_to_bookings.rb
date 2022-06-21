class AddBookingIdToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :booking_id, :integer
  end
end
