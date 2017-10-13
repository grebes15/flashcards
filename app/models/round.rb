
class Round < ApplicationRecord
 belongs_to :deck
 belongs_to :user
 has_many :guesses 
 has_many :guessed_cards, through: :guesses, source: :card

 validates :deck, :user, presence: true
end