class Review < ApplicationRecord
  # A review must belong to a restaurant.
  belongs_to :restaurant
  validates :restaurant, presence: true

  # A review must have a content.
  validates :content, presence: true
  # A review must have a rating.
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  # A review’s rating must be a number between 0 and 5.
  # A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
end
