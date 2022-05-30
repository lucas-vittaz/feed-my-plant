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

User.create(
  user_name: "lucasvittaz",
  email: 'lucas@gmail.com',
  phone: '0777777777',
  password: "123456"
)

plant_15 = Plant.create(
  name: "Banana tree",
  specie: "Musa Dwarf Cavendish",
  description: "No, bananas don't grow on trees, they grow on plants! The Musa Dwarf is particularly appreciated for its large green leaves that give a tropical atmosphere to your home.",
  baseline_hygrometry: 500,
  temperature: "15 - 27°C",
  light_level: "High",
  care_level: "Beginner "
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937791/development/Bananatree_zgtl5y.webp")
plant_15.photo.attach(io: file, filename: 'Bananatree_zgtl5y', content_type: 'image/jpg')

plant_16 = Plant.create(
  name: "Elephant Ear",
  specie: "Alocasia Portora",
  description: "Perhaps the most majestic subspecies of the large Alocasia family, Portodora has very large leaves, reminiscent of elephant ears, hence its nickname \"elephant ear\". Native to South East Asia, this plant with its large, curled leaves will add incredible charisma to your home.",
  baseline_hygrometry: 500,
  temperature: "18 - 27°C",
  light_level: "Low",
  care_level: "Intermediate "
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937791/development/elephant_ears_sizl7y.webp")
plant_16.photo.attach(io: file, filename: 'elephant_ears_sizl7y', content_type: 'image/jpg')

plant_17 = Plant.create(
  name: "Ficus",
  specie: "Ficus Altissima XL",
  description: "The Ficus Altissima is a tree of the large fig family. Altissima refers to the height that this magnificent plant can reach in its natural environment: 30 metres! Native to South Asia, its beautiful ovoid leaves in shades of yellow and green will look great in your home. It is the perfect plant if you want to add a touch of elegance to your living room, kitchen or veranda.",
  baseline_hygrometry: 500,
  temperature: "16 - 25°C",
  light_level: "Medium",
  care_level: "Beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937791/development/ficus_yoeug9.webp")
plant_17.photo.attach(io: file, filename: 'ficus_yoeug9', content_type: 'image/jpg')

plant_18 = Plant.create(
  name: "Pachiras",
  specie: "Pachiras aquatica",
  description: "The Pachira has been a trendy houseplant over the last few years. Native to the tropical zones of Asia and America, he is highly appreciated for its twisted trunk and ease of maintenance.",
  baseline_hygrometry: 500,
  temperature: "16 - 24°C",
  light_level: "Medium",
  care_level: "Beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937791/development/Pachiraaquatiqua_myp80p.webp")
plant_18.photo.attach(io: file, filename: 'Pachiraaquatiqua_myp80p', content_type: 'image/jpg')

plant_19 = Plant.create(
  name: "Rosemary",
  specie: "Salvia rosmarinus",
  description: "Rosemary is a sumptuous plant, frequently filling your home with its beautiful, delicate purple blooms. Offering a magnificent scent all year round, it is a beautiful and soothing outdoor plant.",
  baseline_hygrometry: 500,
  temperature: "-10 - 25°C",
  light_level: "High",
  care_level: "Beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937792/development/Romarin_ki6k3k.webp")
plant_19.photo.attach(io: file, filename: 'Romarin_ki6k3k', content_type: 'image/jpg')

plant_20 = Plant.create(
  name: "Pothos",
  specie: "Pothos Scindapsus climbing",
  description: "Epipremnum aureum, or more commonly known as scindapsus or devil's ivy, is an emblematic climbing plant. It is variegated with green and mustard yellow. It is an extremely easy to care for plant that will adapt to a variety of light conditions. It is hardy and tolerates irregular watering.",
  baseline_hygrometry: 500,
  temperature: "10 - 25°C",
  light_level: "Medium",
  care_level: "Beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937791/development/Pothos_dumg86.webp")
plant_20.photo.attach(io: file, filename: 'Pothos_dumg86', content_type: 'image/jpg')

plant_21 = Plant.create(
  name: "Spider plant",
  specie: "Chlorophytum Bonnie",
  description: "The spider plant, or chlorophytum, is the easiest houseplant to grow at home. One of the most interesting thing is its ability to spread quickly! This plant grows so fast that you will be overwhelmed by its babies in a few month!",
  baseline_hygrometry: 500,
  temperature: "5 - 30°C",
  light_level: "Low",
  care_level: "Beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653938005/development/Bonnie_r3sf1e.webp")
plant_21.photo.attach(io: file, filename: 'Bonnie_r3sf1e', content_type: 'image/jpg')
