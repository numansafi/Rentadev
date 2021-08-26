class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :startdate, :finishdate, presence: true
end
