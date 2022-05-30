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
