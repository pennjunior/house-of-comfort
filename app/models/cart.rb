class Cart < ApplicationRecord
  has_many :cart_items
  has_many :menu_items, through: :cart_items
end
