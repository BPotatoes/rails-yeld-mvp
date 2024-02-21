# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

dishoom = {name: "Dishoom", address: "35 bouvelard des chartrons", phone_number:"2609290269", category: "belgian"}
pizza_east = {name: "Pizza East", address: "45 avenue de l'italie", phone_number:"+33556965826", category: "italian"}
la_tour_dargent = {name: "La tour d'argent", address: "25 impasse de Paris", phone_number:"+338021632596", category: "french"}
buffet_a_volonte = {name: "Buffer à volonté", address: "42 quartier de Chinatown", phone_number:"+3352021252671", category: "chinese"}
fufuramen = {name: "Fufu ramen", address: "45 rue de Tokyo", phone_number:"+33596845236", category: "japanese"}

[dishoom, pizza_east, la_tour_dargent, buffet_a_volonte, fufuramen].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
