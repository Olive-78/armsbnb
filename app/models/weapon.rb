class Weapon < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings # dependent: :destroy
  validates :price, :name, :category, :localisation, presence: true

  has_one_attached :photo
end
