class Game < ApplicationRecord
  has_many :turns
  has_and_belongs_to_many :users
  validates_associated :users

  NUMBER_OF_PLAYERS = 2

  def full?
    users.count >= NUMBER_OF_PLAYERS
  end

  def turn?(user, game)
    game.turn = users.sample.id
  end
end
