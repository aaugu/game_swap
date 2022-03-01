class BookingsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @game = Game.find(params[:game_id])
    @booking.user = current_user
    @booking.game = @game

    if @booking.save
      @game.available = false
      @game.save
      redirect_to dashboards_path, notice: "Good Game Well Played !"
    else
      render "new"#,  notice: "#{@game.title} not available right now"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
