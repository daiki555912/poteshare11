class AddAllcostToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :allcost, :integer
  end
end
