class Game < ApplicationRecord
  has_many :turns
  has_many :users

  NUMBER_OF_PLAYERS = 2

  def join(user)
    binding.irb
    return if !player_missing?
    user = User.create
  end

  def turn?(user)
    player_num(user) == turn
  end

  def player_missing?
    not User.count == NUMBER_OF_PLAYERS
  end

  def create_user
    unless Game.where(User.count > 2)
      User.create
    end
  end
end
