class Reservation < ApplicationRecord
  belongs_to :table

  validates :reservation_time, presence: true
  validates :guest_name, presence: true
  validates :guest_phone, presence: true
  validates :status, presence: true
  enum status: { accepted: "Accepted", waiting: "Pending", canceled: "Canceled", confirmed: "Confirmed" }

  private

  def reservation_time_cannot_be_in_the_past
    if reservation_time.present? && reservation_time < Time.now
      errors.add(:reservation_time, "can't be in the past")
    end
  end
end
