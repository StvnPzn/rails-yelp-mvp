class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: RATING }, numericality: { only_integer: true }
end
