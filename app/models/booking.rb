class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

  enum status: [:pending, :accepted, :declined]
end
