class Review < ApplicationRecord
  # A review must belong to a restaurant.
  belongs_to :restaurant
  # A review must have a content.
  validates :content, presence: true
  # A review must have a rating.
  validates :rating, presence: true
  # A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
  # A review’s rating must be a number between 0 and 5.
  validates :rating, numericality: { only_integer: true, in: 0..5 }
  # validates :rating, comparison: { greater_than_or_equal_to: 1 }
  # validates :rating, comparison: { less_than_or_equal_to: 5 }
end
