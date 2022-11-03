class User < ApplicationRecord
  has_many :challenges
  has_many :bookings
  has_many :requests, through: :challenges, source: :bookings

  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
end
