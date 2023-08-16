class Review < ApplicationRecord
  belongs_to :restaurant

  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: (0..5)}

end
