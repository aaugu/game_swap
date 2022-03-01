# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.destroy_all
Game.destroy_all

User.create!(
  email: "aaribaud@hotmail.com",
  password: "123456",
  username: "Anthony",
  address: "Rue des Vollandes 38, 1207 Genève"
)

User.create!(
  email: "janusfury@mac.com",
  password: "123456",
  username: "James",
  address: "Rue du Lac 3, 1207 Genève"
)

file1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/42700/header.jpg?t=1639695937')
game1 = Game.new(
  title: 'Call Of Duty',
  category: 'Shooter',
  description: '',
  release_year: 2014,
  platform: 'PS4',
  price_per_day: 2,
  available: true,
  user: User.all.sample
)
game1.image.attach(io: file1, filename: 'COD.jpg', content_type: 'image/jpg')
game1.save!

file2 = URI.open('https://cdn.thetealmango.com/wp-content/uploads/2022/02/GoW-Ragnarok.jpg')
game2 = Game.new(
  title: 'God of War: Ragnarok',
  category: 'Action',
  description: '',
  release_year: 2022,
  platform: 'PS4',
  price_per_day: 3,
  available: true,
  user: User.all.sample
)
game2.image.attach(io: file2, filename: 'GOW.jpg', content_type: 'image/jpg')
game2.save!

file3 = URI.open('https://www.epingi.com/wp-content/uploads/2020/03/Counter-Strike-Global-Offensive-PC-Version-Full-Game-Setup-Free-Download.jpg')
game3 = Game.new(
  title: 'Counter-Strike: GO',
  category: 'Shooter',
  description: 'Counter-Strike: Global Offensive is a multiplayer first-person shooter developed by Valve and Hidden Path Entertainment. It is the fourth game in the Counter-Strike series.',
  release_year: 2012,
  platform: 'Microsoft Windows',
  price_per_day: 1,
  available: true,
  user: User.all.sample
)
game3.image.attach(io: file3, filename: 'CS.jpg', content_type: 'image/jpg')
game3.save!

file4 = URI.open('https://i0.wp.com/mynintendonews.com/wp-content/uploads/2020/09/pokemon_sword__shield.jpg?fit=1280%2C720&ssl=1')
game4 = Game.new(
  title: 'Pokémon Sword and Shield',
  category: 'Role-Playing',
  description: 'Pokémon Sword and Pokémon Shield are 2019 role-playing video games developed by Game Freak and published by The Pokémon Company and Nintendo for the Nintendo Switch.',
  release_year: 2019,
  platform: 'Nintendo Switch',
  price_per_day: 1,
  available: true,
  user: User.all.sample
)
game4.image.attach(io: file4, filename: 'POKEMON.jpg', content_type: 'image/jpg')
game4.save!

file5 = URI.open('https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_TheElderScrollsVSkyrim_image1600w.jpg')
game5 = Game.new(
  title: 'The Elder Scrolls V: Skyrim',
  category: 'Action',
  description: "The Elder Scrolls V: Skyrim is an action role-playing game, playable from either a first or third-person perspective. The player may freely roam over the land of Skyrim—an open world environment consisting of wilderness expanses, dungeons, caves, cities, towns, fortresses, and villages. Players may navigate the game world more quickly by riding horses, paying for a ride from a city's stable or by utilizing a fast-travel system which allows them to warp to previously discovered locations.",
  release_year: 2011,
  platform: 'Nintendo Switch',
  price_per_day: 3,
  available: true,
  user: User.all.sample
)
game5.image.attach(io: file5, filename: 'SKYRIM.jpeg', content_type: 'image/jpeg')
game5.save!

file6 = URI.open('https://9to5fortnite.com/wp-content/uploads/2022/01/La-actualizacion-de-GTA-5-para-la-proxima-generacion-sufrira-mas-retrasos-tras-un-desarrollo-complicado.jpg')
game6 = Game.new(
  title: 'Grand Theft Auto V',
  category: 'Action-Adventure',
  description: 'Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. The game is played from either a third-person or first-person perspective, and its world is navigated on foot and by vehicle.',
  release_year: 2013,
  platform: 'PS5',
  price_per_day: 3,
  available: true,
  user: User.all.sample
)
game6.image.attach(io: file6, filename: 'GTA.jpg', content_type: 'image/jpg')
game6.save!

file7 = URI.open('https://fyre.cdn.sewest.net/maple/608afaa6906368001312a76a/social_share-i7TZ7xcWN.png')
game7 = Game.new(
  title: 'Guardians of the Galaxy',
  category: 'Action-Adventure',
  description: "Based on the Marvel Comics superhero team Guardians of the Galaxy. the player assumes control of Peter Quill / Star-Lord from a third-person perspective. The player can utilize Star-Lord's elemental guns to defeat enemies, and fly through the air using his jet boots.",
  release_year: 2021,
  platform: 'PS4',
  price_per_day: 3,
  available: true,
  user: User.all.sample
)
game7.image.attach(io: file7, filename: 'GOTG.png', content_type: 'image/png')
game7.save!

file8 = URI.open('https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/Halo_Infinite48.jpg')
game8 = Game.new(
  title: 'Halo Infinite',
  category: 'Shooter',
  description:"Halo Infinite is a shooter with most gameplay taking place from a first-person perspective. Players use a number of weapons and vehicles commonly found in the Halo series, such as the Warthog. The game features several new abilities for player character Master Chief, such as the Grapple Shot, which enables him to pull himself towards foes or retrieve items.",
  release_year: 2021,
  platform: 'Xbox',
  price_per_day: 3,
  available: true,
  user: User.all.sample
)
game8.image.attach(io: file8, filename: 'HI.jpg', content_type: 'image/jpg')
game8.save!

file9 = URI.open('https://library.sportingnews.com/2021-08/fifa-22-release-date_yxgrfxd4qqx71awy9dukkjxyx.jpg')
game9 = Game.new(
  title: 'FIFA 22',
  category: 'Sport',
  description: "FIFA 22 is a football simulation video game published by Electronic Arts. It is the 29th installment in the FIFA series.",
  release_year: 2021,
  platform: 'PS5',
  price_per_day: 3,
  available: true,
  user: User.all.sample
)
game9.image.attach(io: file9, filename: 'fifa.jpg', content_type: 'image/jpg')
game9.save!

file10 = URI.open('https://q5v2b8p7.rocketcdn.me/wp-content/uploads/2021/09/Main9-5.jpg')
game10 = Game.new(
  title: 'NBA 2K22',
  category: 'Sport',
  description: "NBA 2K22 is a 2021 basketball simulation video game developed by Visual Concepts and published by 2K Sports, based on the National Basketball Association.",
  release_year: 2021,
  platform: 'PS4',
  price_per_day: 3,
  available: true,
  user: User.all.sample
)
game10.image.attach(io: file10, filename: 'nba.jpg', content_type: 'image/jpg')
game10.save!

file11 = URI.open('https://preview.redd.it/zi3acuncdj671.jpg?auto=webp&s=2fa16f8bb038c338a9d9abf15441e145aeae9787')
game11 = Game.new(
  title: 'Katamari Damacy',
  category: 'Puzzle-Action',
  description: "In a drunken stupor, an eccentric, god-like entity called the King of All Cosmos destroys all the stars, Earth's Moon and other such celestial bodies in the universe, save for Earth itself. Despite acknowledging his mistake, the King charges his 5-centimeter-tall son, the Prince, to go to Earth with a magical ball that allows anything smaller than it to stick to it and make it grow—and collect enough material for him to recreate the stars and the Moon. The Prince is successful, and the universe is returned to normal.",
  release_year: 2004,
  platform: 'PS2',
  price_per_day: 1,
  available: true,
  user: User.all.sample
)
game11.image.attach(io: file11, filename: 'katamari.jpg', content_type: 'image/jpg')
game11.save!

file12 = URI.open('https://image.api.playstation.com/vulcan/img/rnd/202111/3019/Btg9YJMDRcWgsbD5E6rOcdT5.jpg?w=440')
game12 = Game.new(
  title: 'The Sims 4',
  category: 'Simulation',
  description:'Unleash your imagination and create a world of Sims that’s wholly unique. Explore and customize every detail from Sims to homes–and much more. Choose how Sims look, act, and dress. Determine how they’ll live out each day. Design and build incredible homes for every family, then decorate with your favorite furnishings and décor. Travel to different neighborhoods where you can meet other Sims and learn about their lives. Discover beautiful locations with distinctive environments, and go on spontaneous adventures. Manage the ups and downs of Sims’ everyday lives and see what happens when you play out realistic or fantastical scenarios. Tell your stories your way while developing relationships, pursuing careers and life aspirations, and immersing yourself in an extraordinary game where the possibilities are endless.',
  release_year: 2014,
  platform: 'Microsoft Windows',
  price_per_day: 1,
  available: true,
  user: User.all.sample
)
game12.image.attach(io: file12, filename: 'sims4.jpg', content_type: 'image/jpg')
game12.save!

file13 = URI.open('https://media.contentapi.ea.com/content/dam/battlefield/battlefield-2042/images/2021/04/k-1920x1080-featured-image.jpg.adapt.crop191x100.1200w.jpg')
game13 = Game.new(
  title: 'Battlefield 2042',
  category: 'Shooter',
  description: "Battlefield 2042 is a multiplayer-focused first-person shooter. As the game is set in the near future, it features futuristic weapons and gadgets like deployable turrets and drones, as well as vehicles that players can commandeer.",
  release_year: 2021,
  platform: 'Xbox One',
  price_per_day: 3,
  available: true,
  user: User.all.sample
)
game13.image.attach(io: file13, filename: 'battlefield.jpg', content_type: 'image/jpg')
game13.save!

file14 = URI.open('https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_KnockoutCity.jpg')
game14 = Game.new(
  title: 'Knock-out City',
  category: 'Action',
  description: "Knockout City is a team-based competitive multiplayer video game whose gameplay rules resemble dodgeball. The player's goal is to attack enemies from the opposing team by knocking them out with a ball. There are several types of balls in the game, including the Moon Ball, which allows the player holding the ball to jump higher, and the Bomb Ball, which is a time bomb that explodes on impact. A player can also throw another player as a ball.",
  release_year: 2021,
  platform: 'Nintendo Switch',
  price_per_day: 2,
  available: true,
  user: User.all.sample
)
game14.image.attach(io: file14, filename: 'KOC.jpg', content_type: 'image/jpg')
game14.save!

file15 = URI.open('https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_JustDance2022_image1600w.jpg')
game15 = Game.new(
  title: 'Just Dance',
  category: 'Dance',
  description:"players must mimic the on-screen dancer's choreography to a chosen song.",
  release_year: 2021,
  platform: 'PS4',
  price_per_day: 1,
  available: true,
  user: User.all.sample
)
game15.image.attach(io: file15, filename: 'dance.jpg', content_type: 'image/jpg')
game15.save!
