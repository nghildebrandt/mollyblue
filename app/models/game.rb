class Game < ApplicationRecord
  has_many :turns
  has_many :users
  validates_associated :users

  NUMBER_OF_PLAYERS = 2

  def full?
    users.count >= NUMBER_OF_PLAYERS
  end
end
