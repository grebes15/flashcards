class Guess < ApplicationRecord
  belongs_to :card
  belong_to :round
  has_one :deck through: :card

  validates :response
end
