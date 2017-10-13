class User < ApplicationRecord
  include BCrypt

  has_many :decks
  has_many :rounds
  has_many :guesses, through: :rounds, source: :guesses

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true

  def password
  	@password ||= Password.new(password_hash)
  end

  def password=(new_password)
  	@password = new_password
  	self.password_hash = Password.create(new_password)
  end

  def self.authenticate(username, password)
  	user = User.find_by(username: username)
  	if user && user.password == password
  		return user
  	else
  		nil
  	end
  end
end

