class Challenge < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings

  validates :title, presence: true
  validates :title, inclusion: { within: %w[Ruby OOP DB Front Rails] }
  validates :description, presence: true
  # validates :category, presence: true
  validates :duration, presence: true

  has_one_attached :photo
end
