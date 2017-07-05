# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Food.ingredient + " House",
    address: Faker::Address.street_address,
    phone_number: Faker::Number.number(10),
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    rating: [0, 1, 2, 3, 4, 5].sample)
  restaurant.save!
end
