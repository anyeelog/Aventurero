class Equipment < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  has_many :bookings

  validates :name, :category, :price, presence: true
  validates :description, length: { minimum: 30, maximum: 150 }, allow_blank: true
end
