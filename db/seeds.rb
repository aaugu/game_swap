# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Game.destroy_all

User.create!(
  email: "aaribaud@hotmail.com",
  password: "123456",
  username: "Anthony",
  address: "Eaux-Vives, Geneva"
)

User.create!(
  email: "janusfury@mac.com",
  password: "123456",
  username: "James",
  address: "Eaux-Vives, Geneva"
)


Game.create!(
  title: 'Call of Duty: Advanced Warfare',
  category: 'Shooter',
  description: '',
  release_year: 2014,
  platform: 'PS4',
  price_per_day: 2,
  available: true,
  picture_url: 'https://media.ldlc.com/r1600/ld/products/00/01/74/96/LD0001749675_2.jpg',
  user: User.first
)

Game.create!(
  title: 'God of War: Ragnarok',
  category: 'Action',
  description: '',
  release_year: 2022,
  platform: 'PS4',
  price_per_day: 3,
  available: true,
  picture_url: 'https://cdn.awsli.com.br/600x450/241/241991/produto/122597245/4e2fa85c4c.jpg',
  user: User.all.sample
)

Game.create!(
  title: 'Counter-Strike: GO',
  category: 'Shooter',
  description: 'Counter-Strike: Global Offensive is a multiplayer first-person shooter developed by Valve and Hidden Path Entertainment. It is the fourth game in the Counter-Strike series.',
  release_year: 2012,
  platform: 'Microsoft Windows',
  price_per_day: 1,
  available: true,
  picture_url: 'https://cdn.awsli.com.br/600x450/241/241991/produto/122597245/4e2fa85c4c.jpg',
  user: User.all.sample
)

Game.create!(
  title: 'Pokémon Sword and Shield',
  category: 'Role-Playing',
  description: 'Pokémon Sword and Pokémon Shield are 2019 role-playing video games developed by Game Freak and published by The Pokémon Company and Nintendo for the Nintendo Switch.',
  release_year: 2019,
  platform: 'Nintendo Switch',
  price_per_day: 1,
  available: true,
  picture_url: 'https://www.u-buy.ch/productimg/?image=aHR0cHM6Ly9pNS53YWxtYXJ0aW1hZ2VzLmNvbS9hc3IvYjY0MzY2MjAtODhmNy00ZGUxLWI4M2YtYWI2M2EwNGQzMWM3XzEuODRmYTQyODBiM2MwMDc2OGY4Njc5OTczMDQ5NTc3NjguanBlZw.jpg',
  user: User.all.sample
)

Game.create!(
  title: 'The Elder Scrolls V: Skyrim',
  category: 'Action',
  description: '',
  release_year: 2011,
  platform: 'Nintendo Switch',
  price_per_day: 3,
  available: true,
  picture_url: 'https://media.gamestop.com/i/gamestop/10141925/The-Elder-Scrolls-V-Skyrim---Nintendo-Switch?$pdp$',
  user: User.all.sample
)
