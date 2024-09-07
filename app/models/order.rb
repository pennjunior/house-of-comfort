class Order < ApplicationRecord
  has_many :order_items, dependent: destroy
  belongs_to :table
  belongs_to :user

  validates :guest_name, presence: true, if: -> { guest_mobile.present? || guest_address.present? }
  validates :guest_mobile, presence: true, if: -> { guest_name.present? || guest_address.present? }
  validates :guest_address, presence: true, if: -> { guest_name.present? || guest_mobile.present? }
  validates :status, inclusion: { in: %w[pending confirmed delivered] }
end
