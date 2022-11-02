class User < ApplicationRecord
  has_many :challenges
  has_many :bookings
  has_many :requests, :through => :challenges, :source => :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
