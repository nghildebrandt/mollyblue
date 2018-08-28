class GameChannel < ApplicationCable::Channel
  def subscribed
    # ugly as fuck

    game = Game.where(user_1_id: current_user).or(
      Game.where(user_2_id: current_user)).first

    stream_for game
  end
end
