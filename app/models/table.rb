class Table < ApplicationRecord
  has_many :orders
  has_many :reservations

  validates :number, presence: true
  validates :capacity, presense: true, numericality: { greater_than_or_equal_to: 0 }
end
