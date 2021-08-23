class Listing < ApplicationRecord
  belongs_to :user
  
  validates :title, :description, :price, presence: true
end
