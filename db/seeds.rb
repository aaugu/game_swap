# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all

Game.create!(
  title: '',
  category: '',
  description: '',
  release_year: '',
  platform: '',
  price_per_day: '',
  available: true,
  user_id: 1
)
