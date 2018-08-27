class GamesController < ApplicationController
  include GamesHelper

  def index
    @user = User.create
    @games = Game.all
  end

  def create
    @game = Game.create
    @game.users.add(current_user)

    render action: show
  end

  def show
    @game = Game.find(params[:id])
  end
end
