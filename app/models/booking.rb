class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :date, presence: true
end
