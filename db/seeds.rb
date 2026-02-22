# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Kitten.destroy_all

names = [
  "Mochi",
  "Luna",
  "Pixel",
  "Beans",
  "Nimbus",
  "Peaches",
  "Miso",
  "Poppy",
  "Otis",
  "Clover"
]

names.each do |name|
  Kitten.create!(
    name: name,
    age: rand(1..12),
    cuteness: rand(7..10)
  )
end

puts "Seeded #{Kitten.count} very cute kittens 🐱"
