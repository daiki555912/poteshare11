class Booking < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', optional: true
  belongs_to :room, foreign_key: 'room_id', optional: true
 
end
