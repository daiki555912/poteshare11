class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :room_id
      t.date :start_date
      t.date :last_date
      t.integer :people

      t.timestamps
    end
  end
end
