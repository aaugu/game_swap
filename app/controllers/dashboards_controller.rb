class DashboardsController < ApplicationController
  def profile
    @bookings = Booking.where(user: current_user)
    @games = Game.where(user: current_user)
  end
end
