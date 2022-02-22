class AddPictureToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :picture_url, :string
  end
end
