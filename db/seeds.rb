# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
cloud = { name: "Le CLoud", address: "7 Boundary St, London E2 7JE", phone_number: '411', category: 'chinese' }
mamamia = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: '543', category: 'italian' }
boteghuitta = { name: "La Boteghuitta", address: "Sunset Bolevard, Grand-Baie", phone_number: '777', category: 'japanese' }
bere = { name: "Chez Bere", address: "Royal Road, Port-Louis", phone_number: '890', category: 'french' }
poivrier = { name: "Le Poivrier", address: "Pereybere, Grand-Baie", phone_number: '287', category: 'french' }

[cloud, mamamia, boteghuitta, bere, poivrier].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
