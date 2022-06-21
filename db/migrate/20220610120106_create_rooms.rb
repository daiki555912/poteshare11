class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :user_id
      t.string :roomname
      t.text :roomabout
      t.integer :cost
      t.string :address

      t.timestamps
    end
  end
end
