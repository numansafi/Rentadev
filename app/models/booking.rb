class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :datetime, presence: true
end
