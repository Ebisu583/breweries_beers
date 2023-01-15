# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.env.development?
  puts "Destroying breweries"
  Brewery.destroy_all
end

puts "Creating new brewery"
Brewery.create!(
  name: "Pinta",
  banner_url: "https://browarpinta.pl/wp-content/uploads/2021/06/logo-dark.png"
)

Brewery.create!(
  name: "Mikolajki",
  banner_url: "https://browarmikolajki.pl/wp-content/themes/browar/upload/barista-making-coffee-F2GU6L8.jpg"
)

Brewery.create!(
  name: "Kormoran",
  banner_url: "https://ipiwo.pl/wp-content/uploads/2021/01/duze-logo-browar-Kormoran-600x600-1-300x300.jpg"
)

Brewery.create!(
  name: "Trzech Kumpli",
  banner_url: "https://www.allepiwo.pl/userdata/public/producers/179.jpg"
)

puts "Seeding done!"
