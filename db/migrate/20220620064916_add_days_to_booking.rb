class AddDaysToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :days, :integer
  end
end
