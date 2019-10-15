# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.create!(name: "Aberdeen", state:"Scotland" ,country:"UK")
City.create!(name: "Cardiff", state:"Wales" ,country:"UK")
City.create!(name: "Edinburgh", state:"Scotland" ,country:"UK")
City.create!(name: "London", state:"England" ,country:"UK")
City.create!(name: "Manchester", state:"England" ,country:"UK")
