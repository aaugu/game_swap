class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :category
      t.text :description
      t.integer :release_year
      t.string :platform
      t.integer :price_per_day
      t.boolean :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
