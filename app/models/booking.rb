class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :yacht
  # validates :agreed_price, presence: true, numericality: { only_integer: true }
  # validates :start_date, presence: true
  # validates :end_date, presence: true

  # validate :start_date_cannot_be_in_the_past
  # validate :end_date_cannot_be_before_start_date

  # def start_date_cannot_be_in_the_past
  #   if self.start_date < Date.today
  #     errors.add(:start_date, "can't be in the past")
  #   end
  # end

  # def end_date_cannot_be_before_start_date
  #   if self.end_date < :start_date
  #     errors.add(:end_date, "can't be before start date")
  #   end
  # end
end
