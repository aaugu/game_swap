class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :start_date, :end_date, presence: true
  validate :booking_dates_valid?

  private

  def booking_dates_valid?
    return if end_date.blank? || start_date.blank?

    if start_date < Date.today
      errors.add(:start_date, "Start date must be after today")
    elsif end_date < Date.today
      errors.add(:end_date, "End date must be after today")
    elsif end_date < start_date
      errors.add(:end_date, "Must be after the start date")
    end
  end
end