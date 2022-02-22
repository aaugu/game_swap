class ChangeAvailableOfGames < ActiveRecord::Migration[6.1]
  def change
    change_column :games, :available, :boolean, :default => false
  end
end
