# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
puts "Cleaning DB"
UserPlant.destroy_all
Plant.destroy_all
User.destroy_all
puts " Creating Users"
user_1 = User.create(
  user_name: "lucasvittaz",
  email: 'lucas@gmail.com',
  password: "123456"
)
user_2 = User.create(
  user_name: "anthonygouvrillon",
  email: 'anto@gmail.com',
  password: "123456"
)

plant_1 = Plant.create(
  name: "Kentia Palm",
  scientific_name: "Howea Forsteriana",
  description: "The Howea Forsteriana palm, native to Lord Howe Island in Australia, is known for its elegant appearance, its pollution-removing properties and its long dark green leaves.",
  baseline_hygrometry: 400,
  min_baseline_temperature: 15,
  max_baseline_temperature: 25,
  min_baseline_hygrometry: 100,
  max_baseline_hygrometry: 700,
  light_level: "medium",
  care_level: "beginner",
  water_need: "low"
)

file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684982/development%20/KentiaHowea_xxneqo.webp")
plant_1.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 1"
plant_2 = Plant.create(
  name: "Bamboo Orchid",
  scientific_name: "Arundina graminifolia",
  description: "This mystical bamboo orchid grows on rocks and trees in Asia. It is highly valued for its beauty but also for its many virtues used in traditional Chinese medicine.",
  baseline_hygrometry: 550,
  min_baseline_temperature: 16,
  max_baseline_temperature: 27,
  min_baseline_hygrometry: 100,
  max_baseline_hygrometry: 700,
  light_level: "high",
  care_level: "beginner",
  water_need:"low"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684982/development%20/OrchideeBambou_kpm62p.webp")
plant_2.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 2"
plant_3 = Plant.create(
  name: "Swiss Cheese",
  scientific_name: "Monstera Deliciosa",
  description: "The monstera deliciosa is one of the most coveted houseplants for its large, atypical leaves. If you want a green plant that is easy to live with and striking in its size, the Monstera should be on your list.",
  baseline_hygrometry: 220,
  min_baseline_temperature: 16,
  max_baseline_temperature: 25,
  min_baseline_hygrometry: 100,
  max_baseline_hygrometry: 300,
  light_level: "medium",
  care_level: "beginner",
  water_need:"low"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684982/development%20/PhilodendronMonsteraDeliciasa_loqppy.webp")
plant_3.photo.attach(io: file, filename: 'monstera.jpg', content_type: 'image/jpg')

puts " Creating Plants 3"
plant_4 = Plant.create(
  name: "Aloe Vera",
  scientific_name: "Aloe",
  description: "Aloe vera is an ancient plant from the Arabian Peninsula. Popularized for its therapeutic virtues, it's a resistant plant that requires little attention to thrive. It's a perfect plant for beginners.",
  baseline_hygrometry: 450,
  min_baseline_temperature: 13,
  max_baseline_temperature: 27,
  min_baseline_hygrometry: 100,
  max_baseline_hygrometry: 300,
  light_level: "medium",
  care_level: "beginner",
  water_need:"low"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684981/development%20/aloeveraplante_cpqm6j.webp")
plant_4.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 4"
plant_5 = Plant.create(
  name: "Calathea ornata",
  scientific_name: "Marantaceae",
  description: "The Calathea ornata can be recognised by its beautiful dark black leaves with contrasting pale pink veins.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 15,
  max_baseline_temperature: 24,
  min_baseline_hygrometry: 100,
  max_baseline_hygrometry: 300,
  light_level: "low",
  care_level: "beginner",
  water_need:"low"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684981/development%20/CalatheaOppenheimiana_tyftsg.webp")
plant_5.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 5"
plant_6 = Plant.create(
  name: "Cider Gum",
  scientific_name: "Eucalyptus Gunnii",
  description: "Eucalyptus gunnii brings a simple, fragrant and Mediterranean touch to your home. Easy to care for, accommodating, this plant adapts very quickly and can also be placed on your balcony or in your garden.",
  baseline_hygrometry: 600,
  min_baseline_temperature: -10,
  max_baseline_temperature: 24,
  min_baseline_hygrometry: 100,
  max_baseline_hygrometry: 300,
  light_level: "high",
  care_level: "beginner",
  water_need:"low"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684981/development%20/withpotcopie_prk9hp.webp")
plant_6.photo.attach(io: file, filename: 'cidergum.jpg', content_type: 'image/jpg')

puts " Creating Plants 6"
plant_7 = Plant.create(
  name: "Anthurium",
  scientific_name: "Araceae",
  description: "Anthuriums are making a comeback and are back in fashion! The anthurium pink has the ability to remain in bloom all year round, enough to make its friends the orchids jealous. ",
  baseline_hygrometry: 550,
  min_baseline_temperature: 15,
  max_baseline_temperature: 20,
  min_baseline_hygrometry: 100,
  max_baseline_hygrometry: 300,
  light_level: "medium",
  care_level: "beginner",
  water_need:"low"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684982/development%20/AnthuriumPinkchampionrose_wqlecx.webp")
plant_7.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 7"
plant_8 = Plant.create(
  name: "Bird of Paradise",
  scientific_name: "Strelitzia",
  description: "Strelitzia, commonly known as the bird of paradise, is the undisputed queen of the houseplant world",
  baseline_hygrometry: 500,
  min_baseline_temperature: 18,
  max_baseline_temperature: 22,
  min_baseline_hygrometry: 200,
  max_baseline_hygrometry: 400,
  light_level: "medium",
  care_level: "intermediate",
  water_need:"medium"

)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684982/development%20/Oiseaudeparadis_mlddmj.webp")
plant_8.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 8"
plant_9 = Plant.create(
  name: "Calathea triostar",
  scientific_name: "Calathea",
  description: "The calathea triostar is composed of thin pink, green and white leaves.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 14,
  max_baseline_temperature: 30,
  min_baseline_hygrometry: 200,
  max_baseline_hygrometry: 400,
  light_level: "high",
  care_level: "beginner",
  water_need:"medium"

)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684981/development%20/CalatheaOppenheimiana_tyftsg.webp")
plant_9.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 9"
plant_10 = Plant.create(
  name: "Orchid Phalaenopsis",
  scientific_name: "Orchid",
  description: "The Phalaenopsis multiflora orchid is one of the few plants that continue to purify the air in your home after sunset.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 15,
  max_baseline_temperature: 29,
  min_baseline_hygrometry: 200,
  max_baseline_hygrometry: 400,
  light_level: "medium",
  care_level: "beginner",
  water_need:"medium"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684982/development%20/OrchideePhalaenopsismultiflorarose_raxy7x.webp")
plant_10.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 10"
plant_11 = Plant.create(
  name: "Philodendron Monstera Deliciosa",
  scientific_name: "Monstera Deliciosa",
  description: "If you want an easy and striking houseplant the Monstera deliciosa should be on your list.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 20,
  max_baseline_temperature: 25,
  min_baseline_hygrometry: 200,
  max_baseline_hygrometry: 400,
  light_level: "high",
  care_level: "beginner",
  water_need:"medium"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684982/development%20/PhilodendronMonsteraDeliciasa_loqppy.webp")
plant_11.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 11"
plant_12 = Plant.create(
  name: "Dracaena Marginata",
  scientific_name: "Dracaena",
  description: "Dracaenas are mainly native to Africa, but can also be find in Asia and Central America.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 15,
  max_baseline_temperature: 27,
  min_baseline_hygrometry: 200,
  max_baseline_hygrometry: 400,
  light_level: "high",
  care_level: "beginner",
  water_need:"medium"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684982/development%20/DracaenaMarginata_wfbjvu.webp")
plant_12.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 12"
plant_13 = Plant.create(
  name: "Snake plant",
  scientific_name: "Sansevieria Laurentii",
  description: "If you are not yet a plant owner and looking for an easy houseplant, the snake plant is a must have.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 10,
  max_baseline_temperature: 27,
  min_baseline_hygrometry: 200,
  max_baseline_hygrometry: 400,
  light_level: "high",
  care_level: "beginner",
  water_need:"medium"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684981/development%20/Sansevierialaurentiilanguedebellemere_yycswe.webp")
plant_13.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 13"
plant_14 = Plant.create(
  name: "Orange tree",
  scientific_name: "Calamondin",
  description: "As a citrus fruit, the calamansi brings a Mediterranean fragrance into your home.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 17,
  max_baseline_temperature: 25,
  min_baseline_hygrometry: 200,
  max_baseline_hygrometry: 400,
  light_level: "High",
  care_level: "Medium",
  water_need:"Medium"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684981/development%20/CalamondinCalamasiOrangerd_interieur_pkxl9b.webp")
plant_14.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 14"
plant_15 = Plant.create(
  name: "Banana tree",
  scientific_name: "Musa Dwarf Cavendish",
  description: "No, bananas don't grow on trees, they grow on plants! The Musa Dwarf is particularly appreciated for its large green leaves that give a tropical atmosphere to your home.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 15,
  max_baseline_temperature: 27,
  min_baseline_hygrometry: 200,
  max_baseline_hygrometry: 400,
  light_level: "High",
  care_level: "Beginner",
  water_need:"High"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684981/development%20/Bananier_dw9sb4.webp")
plant_15.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 15"
plant_16 = Plant.create(
  name: "Elephant Ear",
  scientific_name: "Alocasia Portora",
  description: "Perhaps the most majestic subspecies of the large Alocasia family, Portodora has very large leaves, reminiscent of elephant ears, hence its nickname \"elephant ear\". Native to South East Asia, this plant with its large, curled leaves will add incredible charisma to your home.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 18,
  max_baseline_temperature: 27,
  min_baseline_hygrometry: 300,
  max_baseline_hygrometry: 500,
  light_level: "Low",
  care_level: "Intermediate",
  water_need:"High"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684982/development%20/Potodora_mwfa3j.webp")
plant_16.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 16"
plant_17 = Plant.create(
  name: "Ficus",
  scientific_name: "Ficus Altissima XL",
  description: "The Ficus Altissima is a tree of the large fig family. Altissima refers to the height that this magnificent plant can reach in its natural environment: 30 metres! Native to South Asia, its beautiful ovoid leaves in shades of yellow and green will look great in your home. It is the perfect plant if you want to add a touch of elegance to your living room, kitchen or veranda.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 18,
  max_baseline_temperature: 27,
  min_baseline_hygrometry: 300,
  max_baseline_hygrometry: 500,
  light_level: "Medium",
  care_level: "Beginner",
  water_need:"High"

)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684981/development%20/Altissima_xmieyv.webp")
plant_17.photo.attach(io: file, filename: 'ficus_yoeug9', content_type: 'image/jpg')

puts " Creating Plants 17"
plant_18 = Plant.create(
  name: "Pachiras",
  scientific_name: "Pachiras aquatica",
  description: "The Pachira has been a trendy houseplant over the last few years. Native to the tropical zones of Asia and America, he is highly appreciated for its twisted trunk and ease of maintenance.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 16,
  max_baseline_temperature: 24,
  min_baseline_hygrometry: 300,
  max_baseline_hygrometry: 500,
  light_level: "Medium",
  care_level: "Beginner",
  water_need:"High"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684982/development%20/Pachiraaquatiqua_l76iz4.webp")
plant_18.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 18"
plant_19 = Plant.create(
  name: "Rosemary",
  scientific_name: "Salvia rosmarinus",
  description: "Rosemary is a sumptuous plant, frequently filling your home with its beautiful, delicate purple blooms. Offering a magnificent scent all year round, it is a beautiful and soothing outdoor plant.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 10,
  max_baseline_temperature: 25,
  min_baseline_hygrometry: 300,
  max_baseline_hygrometry: 500,
  light_level: "High",
  care_level: "Beginner",
  water_need:"High"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684981/development%20/Romarin_nrymah.webp")
plant_19.photo.attach(io: file, filename: 'Romarin_ki6k3k', content_type: 'image/jpg')

puts " Creating Plants 19"
plant_20 = Plant.create(
  name: "Pothos",
  scientific_name: "Pothos Scindapsus climbing",
  description: "Epipremnum aureum, or more commonly known as scindapsus or devil's ivy, is an emblematic climbing plant. It is variegated with green and mustard yellow. It is an extremely easy to care for plant that will adapt to a variety of light conditions. It is hardy and tolerates irregular watering.",
  baseline_hygrometry: 500,
  min_baseline_temperature: 10,
  max_baseline_temperature: 25,
  min_baseline_hygrometry: 300,
  max_baseline_hygrometry: 500,
  light_level: "Medium",
  care_level: "Beginner",
  water_need:"High"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684982/development%20/Pothos_ectm72.webp")
plant_20.photo.attach(io: file, filename: '', content_type: 'image/jpg')

puts " Creating Plants 20"
plant_21 = Plant.create(
  name: "Spider plant",
  scientific_name: "Chlorophytum Bonnie",
  description: "The spider plant, or chlorophytum, is the easiest houseplant to grow at home. One of the most interesting thing is its ability to spread quickly! This plant grows so fast that you will be overwhelmed by its babies in a few month!",
  baseline_hygrometry: 50,
  min_baseline_temperature: 5,
  max_baseline_temperature: 30,
  min_baseline_hygrometry: 300,
  max_baseline_hygrometry: 500,
  light_level: "Low",
  care_level: "Beginner",
  water_need:"High"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1654684981/development%20/Bonnie_ofvoxt.webp")
plant_21.photo.attach(io: file, filename: 'Bonnie_r3sf1e', content_type: 'image/jpg')

puts " Creating user plant 1"
user_plant1 = UserPlant.create!(
  user: user_1,
  plant: plant_2,
  latest_hygrometry: 10,
  room: :kitchen

)
puts " Creating user plant 2"
user_plant2 = UserPlant.create(
  user: user_1,
  plant: plant_1,
  latest_hygrometry: 700,
  room: :garden

)
puts " Creating user plant 3"
user_plant3 = UserPlant.create!(
  user: user_1,
  plant: plant_13,
  latest_hygrometry: 500,
  room: :bedroom
)
puts " Creating user plant 4"
user_plant4 = UserPlant.create(
  user: user_1,
  plant: plant_20,
  latest_hygrometry: 700,
  room: :living_room
)
puts " Creating user plant 5"
user_plant5 = UserPlant.create!(
  user: user_1,
  plant: plant_17,
  latest_hygrometry: 500,
  room: :bedroom
)
puts " Creating user plant 6"
user_plant6 = UserPlant.create(
  user: user_1,
  plant: plant_12,
  latest_hygrometry: 700,
  room: :kitchen
)

puts " Creating user plant 7"
user_plant7 = UserPlant.create(
  user: user_1,
  plant: plant_5,
  latest_hygrometry: 750,
  room: :shower_room
)

puts " Creating user plant 8"
user_plant8 = UserPlant.create(
  user: user_1,
  plant: plant_3,
  latest_hygrometry: 90,
  room: :parent_room
)

puts " Creating user plant 9"
user_plant9 = UserPlant.create(
  user: user_1,
  plant: plant_10,
  latest_hygrometry: 700,
  room: :patio
)

Device.create!(
  external_id: "00999433",
  latest_hygrometry: 0
)

Device.create!(
  external_id: "42343263",
  latest_hygrometry: 500
)

Device.create!(
  external_id: "04230423",
  latest_hygrometry: 250
)
