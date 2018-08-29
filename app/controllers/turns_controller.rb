class TurnsController < ApplicationController
  protect_from_forgery except: :create

  def create
    game = Game.find(params[:game_id])

    move = Move.from_direction(
      Coord.new(turn_params[:x].to_i, turn_params[:y].to_i),
      turn_params[:direction]
    )

    game.turns.create(move: move, player: @user)

    GameChannel.broadcast_to game, 'update'
  end

  private

  def turn_params
    params.require(:turn).permit(:x, :y, :direction)
  end
end
