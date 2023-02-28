class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :equipments, dependent: :destroy
  has_many :bookings
  has_many :received_bookings, through: :equipments, source: :bookings

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true
end
