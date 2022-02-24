class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    # @games = Game.find(params[:id])
  end

  private

  def game_params
    params.require(:games).permit(:title, :details, :completed)
  end
end
