require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Generating pubs..."
Pub.destroy_all

10.times do
  p Pub.create( name: "The #{Faker::Music::RockBand.song} pub", location: Faker::Games::Witcher.location, rating: rand(1..10))
end

puts "Pubs established. Enjoy"
