class GamesController < ApplicationController
  def new
    @categories = []
    @console_collection = ["Atari", "SuperNintendo", "DreamCast", "Sega", "GameBoy", "NintendoDS", "Switch", "PC", "XBox", "Xbox360", "PSVita", "PSOne", "PS2", "PS3", "PS4", "PS5"]
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user

    if @game.save
      redirect_to root_path
    else
      render "new"
    end
  end
end
