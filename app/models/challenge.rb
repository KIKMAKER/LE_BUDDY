class Challenge < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true
  # validates :category, inclusion: { within: %w[Ruby OOP DB Front Rails] }
  validates :duration, presence: true
  # validates :duration, inclusion: { within: %w[Challenge Full day Module] }
  has_one_attached :photo
end
