class Room < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  has_one_attached :image
end
