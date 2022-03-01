class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :start_date, :end_date, presence: true
  validate :booking_dates_valid?

  private

  def booking_dates_valid?
    if start_date < Date.today
      errors.add(:start_date, "must be after today")
    elsif end_date < Date.today
      errors.add(:end_date, "must be after today")
    elsif end_date < start_date
      errors.add(:end_date, "must be after the start date")
    else
      return true
    end
  end
end
