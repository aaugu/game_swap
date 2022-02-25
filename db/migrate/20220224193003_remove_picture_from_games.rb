class RemovePictureFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :picture_url
  end
end
