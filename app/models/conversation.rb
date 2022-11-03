class Conversation < ApplicationRecord
  belongs_to :challenge
  has_many :messages
end
