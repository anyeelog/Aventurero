class Equipment < ApplicationRecord
  CATEGORY = ["tents", "ski", "caravans", "hiking", "surf"]
  has_many_attached :photos
  belongs_to :user
  has_many :bookings

  validates :name, :category, :price, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :description, length: { minimum: 30, maximum: 150 }, allow_blank: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_equipment,
                  against: %i[name category description],
                  using: {
                    tsearch: { prefix: true }
                  }
end
