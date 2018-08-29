class GamesController < ApplicationController
  include GamesHelper

  def index
    @games = Game.all
    User.create
  end

  def create
    binding.irb
    game = Game.create(users: [current_user])

    redirect_to game
  end

  def show
    @game = Game.find(params[:id])
  end
end
