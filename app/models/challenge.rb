class Challenge < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true
  validates :duration, presence: true
end
