class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :equipment

  validates :start_date, :end_date, presence: true
  enum status: [ :pending, :confirmed, :cancelled  ]

  # before_save :end_date_after_start_date

  # private

  # def end_date_after_start_date
  #   return if end_date.blank? || start_date.blank?

  #   if end_date < start_date
  #     errors.add(:end_date, "must be after the start date")
  #   end
  # end
end
