class Listing < ApplicationRecord
  belongs_to :user
  validates :title, :description, :price, presence: true
  has_one_attached :photo

  include PgSearch::Model
    pg_search_scope :search_by,
      against: [ [:title, 'A'], [:description, 'C']],
      associated_against: {
        user: [[:first_name, 'B'], [:last_name, 'B']]
      },
      using: {
        tsearch: { prefix: true }
      }
end
