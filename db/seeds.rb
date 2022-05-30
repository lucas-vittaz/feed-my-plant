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
  phone: '0777777777',
  password: "123456"
)
user_2 = User.create(
  user_name: "anthonygouvrillon",
  email: 'anto@gmail.com',
  phone: '0777777776',
  password: "123456"
)
plant_1 = Plant.create(
  name: "Kentia Palm",
  specie: "Howea Forsteriana",
  description: "The Howea Forsteriana palm, native to Lord Howe Island in Australia, is known for its elegant appearance, its pollution-removing properties and its long dark green leaves.",
  baseline_hygrometry: 400,
  temperature: "15°C to 25°C",
  light_level: "medium",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941775/development/kentiapalm_kgfbz9.webp")
plant_1.photo.attach(io: file, filename: 'kentiapalm.jpg', content_type: 'image/jpg')

plant_2 = Plant.create(
  name: "Bamboo Orchid",
  specie: "Arundina graminifolia",
  description: "This mystical bamboo orchid grows on rocks and trees in Asia. It is highly valued for its beauty but also for its many virtues used in traditional Chinese medicine.",
  baseline_hygrometry: 550,
  temperature: "16°C to 27°C",
  light_level: "high",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941899/development/orchid_celue6.webp")
plant_2.photo.attach(io: file, filename: 'bambooorchid.jpg', content_type: 'image/jpg')

plant_3 = Plant.create(
  name: "Swiss cheese plant",
  specie: "Monstera Deliciosa",
  description: "The monstera deliciosa is one of the most coveted houseplants for its large, atypical leaves. If you want a green plant that is easy to live with and striking in its size, the Monstera should be on your list.",
  baseline_hygrometry: 400,
  temperature: "16°C to 25°C",
  light_level: "medium",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653942050/development/monstera_ggq4pp.webp")
plant_3.photo.attach(io: file, filename: 'monstera.jpg', content_type: 'image/jpg')

plant_4 = Plant.create(
  name: "Aloe Vera",
  specie: "Aloe",
  description: "Aloe vera is an ancient plant from the Arabian Peninsula. Popularized for its therapeutic virtues, it's a resistant plant that requires little attention to thrive. It's a perfect plant for beginners.",
  baseline_hygrometry: 450,
  temperature: "13°C and 27°C",
  light_level: "medium",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941767/development/aloevera_utvt74.webp")
plant_4.photo.attach(io: file, filename: 'aloevera.jpg', content_type: 'image/jpg')

plant_5 = Plant.create(
  name: "Calathea ornata",
  specie: "Marantaceae",
  description: "The Calathea ornata can be recognised by its beautiful dark black leaves with contrasting pale pink veins.",
  baseline_hygrometry: 500,
  temperature: "15°C to 24°C",
  light_level: "low",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941853/development/calathea_jh8csh.webp")
plant_5.photo.attach(io: file, filename: 'calatha.jpg', content_type: 'image/jpg')

plant_6 = Plant.create(
  name: "Cider Gum",
  specie: "Eucalyptus Gunnii",
  description: "Eucalyptus gunnii brings a simple, fragrant and Mediterranean touch to your home. Easy to care for, accommodating, this plant adapts very quickly and can also be placed on your balcony or in your garden.",
  baseline_hygrometry: 600,
  temperature: "-10°C to 24°C",
  light_level: "high",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941859/development/eucalyptus_nk6jhi.webp")
plant_6.photo.attach(io: file, filename: 'cidergum.jpg', content_type: 'image/jpg')

plant_7 = Plant.create(
  name: "Anthurium",
  specie: "Araceae",
  description: "Anthuriums are making a comeback and are back in fashion! The anthurium pink has the ability to remain in bloom all year round, enough to make its friends the orchids jealous. ",
  baseline_hygrometry: 550,
  temperature: "15°C to 20°",
  light_level: "medium",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941782/development/anthurium_qa16s7.webp")
plant_7.photo.attach(io: file, filename: 'anthurium.jpg', content_type: 'image/jpg')

plant_8 = Plant.create(
  name: "Bird of Paradise",
  specie: "Strelitzia",
  description: "Strelitzia, commonly known as the bird of paradise, is the undisputed queen of the houseplant world",
  baseline_hygrometry: 500,
  temperature: "18-22 C°",
  light_level: "medium",
  care_level: "intermediate"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937977/development/Bird_Strelizia_mztnng.webp")
plant_8.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_9 = Plant.create(
  name: "Calathea triostar",
  specie: "Calathea",
  description: "The calathea triostar is composed of thin pink, green and white leaves.",
  baseline_hygrometry: 500,
  temperature: "14-30 C°",
  light_level: "hight",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937977/development/Calathea_Triostar_rrln5e.webp")
plant_9.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_10 = Plant.create(
  name: "Orchid Phalaenopsis",
  specie: "Orchid",
  description: "The Phalaenopsis multiflora orchid is one of the few plants that continue to purify the air in your home after sunset.",
  baseline_hygrometry: 500,
  temperature: "15-29 C°",
  light_level: "medium",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937977/development/Orchidee_Phalaenopsis_sibphz.webp")
plant_10.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_11 = Plant.create(
  name: "Philodendron Monstera Deliciosa",
  specie: "Monstera Deliciosa",
  description: "If you want an easy and striking houseplant the Monstera deliciosa should be on your list.",
  baseline_hygrometry: 500,
  temperature: "20-25 C°",
  light_level: "hight",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937978/development/Philodendron_Monstera_wlazop.webp")
plant_11.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_12 = Plant.create(
  name: "Dracaena Marginata",
  specie: "Dracaena",
  description: "Dracaenas are mainly native to Africa, but can also be find in Asia and Central America.",
  baseline_hygrometry: 500,
  temperature: "15-27 C°",
  light_level: "hight",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937977/development/Dracaena_Marginata_wocecp.webp")
plant_12.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_13 = Plant.create(
  name: "Snake plant",
  specie: "Sansevieria Laurentii",
  description: "If you are not yet a plant owner and looking for an easy houseplant, the snake plant is a must have.",
  baseline_hygrometry: 500,
  temperature: "10-27 C°",
  light_level: "hight",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937978/development/Snake_Sanseviera_qyusot.webp")
plant_13.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_14 = Plant.create(
  name: "Orange tree",
  specie: "Calamondin",
  description: "As a citrus fruit, the calamansi brings a Mediterranean fragrance into your home.",
  baseline_hygrometry: 500,
  temperature: "17-25 C°",
  light_level: "hight",
  care_level: "medium"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937978/development/Orange_tree_rq5kme.webp")
plant_14.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_15 = Plant.create(
  name: "Banana tree",
  specie: "Musa Dwarf Cavendish",
  description: "No, bananas don't grow on trees, they grow on plants! The Musa Dwarf is particularly appreciated for its large green leaves that give a tropical atmosphere to your home.",
  baseline_hygrometry: 500,
  temperature: "15 - 27°C",
  light_level: "High",
  care_level: "Beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941931/development/Bananier_kg4daa.webp")
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

file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941931/development/Potodora_d4fkui.webp")
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

file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941931/development/Altissima_pzarma.webp")
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

file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941931/development/Pachiraaquatiqua_oathel.webp")
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

file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941931/development/Romarin_dagj6l.webp")
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

file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941931/development/Pothos_ze9ale.webp")
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

file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653941931/development/Bonnie_iqjao1.webp")
plant_21.photo.attach(io: file, filename: 'Bonnie_r3sf1e', content_type: 'image/jpg')
