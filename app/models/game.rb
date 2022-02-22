class Game < ApplicationRecord
  belongs_to :user

  validates :title, :category, :description, :platform, :price_per_day, presence: true
end
