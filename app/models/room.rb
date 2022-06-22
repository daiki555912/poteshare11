class Room < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', optional: true
  belongs_to :booking, foreign_key: 'booking_id', optional: true
  has_one_attached :image

end
