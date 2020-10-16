class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :rating, presence: true
  validates :content_body, presence: true
  validates_length_of :content_body, minimum: 50, maximum: 250
  validates :rating, numericality: { greater_than_or_equal_to: 1}
  validates :rating, numericality: { less_than_or_equal_to: 5}\
  

  scope :most_reviews, -> { (
  select("products.id, products.name, products.price, count(reviews.id) as reviews_count")
  .joins(:reviews)
  .group("products.id")
  .order("reviews_count DESC")
  .limit(1)) }
end