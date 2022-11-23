# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

mcdonalds = { name: "McDonalds", address: "Fleet Street", category: "chinese", phone_number: "07777267423" }
burger_king = { name: "Burger King", address: "Brown Street", category: "italian", phone_number: "07576267823" }
green_house = { name: "Green House", address: "Slim Avenue", category: "french", phone_number: "0946372865" }
pukies = { name: "Pukies", address: "Slimey Road", category: "belgian", phone_number: "07849372623" }
musaki = { name: "Musaki", address: "South Street", category: "japanese", phone_number: "09294857323" }

[mcdonalds, burger_king, green_house, pukies, musaki].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
