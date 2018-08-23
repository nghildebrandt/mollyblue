class BoardsController < ApplicationController
  layout false

  def show
    @width = 8
    @height = 8

    @game = Game.find(params[:id])
  end
end
