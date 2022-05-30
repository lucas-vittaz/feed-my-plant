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
  name: "",
  specie: "",
  description: "",
  baseline_hygrometry: 500,
  temperature: "",
  light_level: "",
  care_level: ""
)
file = URI.open("")
plant_1.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_2 = Plant.create(
  name: "",
  specie: "",
  description: "",
  baseline_hygrometry: 500,
  temperature: "",
  light_level: "",
  care_level: ""
)
file = URI.open("")
plant_2.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_3 = Plant.create(
  name: "",
  specie: "",
  description: "",
  baseline_hygrometry: 500,
  temperature: "",
  light_level: "",
  care_level: ""
)
file = URI.open("")
plant_3.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_4 = Plant.create(
  name: "",
  specie: "",
  description: "",
  baseline_hygrometry: 500,
  temperature: "",
  light_level: "",
  care_level: ""
)
file = URI.open("")
plant_4.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_5 = Plant.create(
  name: "",
  specie: "",
  description: "",
  baseline_hygrometry: 500,
  temperature: "",
  light_level: "",
  care_level: ""
)
file = URI.open("")
plant_5.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_6 = Plant.create(
  name: "",
  specie: "",
  description: "",
  baseline_hygrometry: 500,
  temperature: "",
  light_level: "",
  care_level: ""
)
file = URI.open("")
plant_6.photo.attach(io: file, filename: '', content_type: 'image/jpg')

plant_7 = Plant.create(
  name: "",
  specie: "",
  description: "",
  baseline_hygrometry: 500,
  temperature: "",
  light_level: "",
  care_level: ""
)
file = URI.open("")
plant_7.photo.attach(io: file, filename: '', content_type: 'image/jpg')
