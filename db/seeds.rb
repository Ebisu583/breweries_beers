# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.env.development?
  puts "Destrroying breweries"
  Brewery.destroy_all
end

puts "Creating new brewery"
Brewery.create!(
  name: "Waszczukowe",
  banner_url: "https://www.waszczukowe.pl/"
)

Brewery.create!(
  name: "Markowy",
  banner_url: "https://browarmarkowy.pl/"
)

Brewery.create!(
  name: "Bialy",
  banner_url: "https://browarbialy.pl/"
)

puts "Seeding done!"
