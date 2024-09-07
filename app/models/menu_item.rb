class MenuItem < ApplicationRecord
  has_many :cart_items
  has_many :order_items
  has_many :reviews
  belongs_to :user

  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
