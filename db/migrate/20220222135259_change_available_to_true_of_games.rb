class ChangeAvailableToTrueOfGames < ActiveRecord::Migration[6.1]
  def change
    change_column :games, :available, :boolean, :default => true
  end
end
