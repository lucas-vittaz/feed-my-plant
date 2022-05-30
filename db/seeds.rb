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
plant_12.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_13 = Plant.create(
  name: "Dracaena Marginata",
  specie: "Dracaena",
  description: "Dracaenas are mainly native to Africa, but can also be find in Asia and Central America.",
  baseline_hygrometry: 500,
  temperature: "15-27 C°",
  light_level: "hight",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937977/development/Dracaena_Marginata_wocecp.webp")
plant_13.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_14 = Plant.create(
  name: "Snake plant",
  specie: "Sansevieria Laurentii",
  description: "If you are not yet a plant owner and looking for an easy houseplant, the snake plant is a must have.",
  baseline_hygrometry: 500,
  temperature: "10-27 C°",
  light_level: "hight",
  care_level: "beginner"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937978/development/Snake_Sanseviera_qyusot.webp")
plant_14.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_15 = Plant.create(
  name: "Orange tree",
  specie: "Calamondin",
  description: "As a citrus fruit, the calamansi brings a Mediterranean fragrance into your home.",
  baseline_hygrometry: 500,
  temperature: "17-25 C°",
  light_level: "hight",
  care_level: "medium"
)
file = URI.open("https://res.cloudinary.com/lucas-vittaz/image/upload/v1653937978/development/Orange_tree_rq5kme.webp")
plant_16.photo.attach(io: file, filename: '', content_type: 'image/jpg')
