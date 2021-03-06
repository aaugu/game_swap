class Game < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :bookings, dependent: :destroy

  validates :title, :category, :platform, :price_per_day, presence: true
  validates :price_per_day, numericality: { only_float: true, greater_than: 0 }
  validates :release_year, numericality: { only_integer: true, greater_than: 1958, less_than_or_equal_to: Time.now.year }

  CATEGORIES = ["Action", "Action-Adventure", "Adventure", "Puzzle", "Role-playing", "Simulation", "Strategy", "Sport", "Sandbox"]
  CONSOLE_COLLECTION = ["Atari", "Super Nintendo", "DreamCast", "Sega", "Game Boy", "Nintendo DS", "Switch", "PC", "XBox", "Xbox 360", "PSVita", "PSOne", "PS2", "PS3", "PS4", "PS5"]
end
