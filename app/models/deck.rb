class Deck < ApplicationRecord
  has_many :cards
  has_many :rounds
  belongs_to :user, foreign_key: 'creator_id'

  validates :title, presence: true
end