class Card < ApplicationRecord
  belongs_to :deck
  has_many :guesses

  validates :deck, :question, :answer, presence: true
end