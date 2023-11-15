# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Generating restaurants"

pindu = Restaurant.new({name: 'Pindu', address: 'Woodstock', category: 'belgian'})
shanti = Restaurant.new({name: 'Shanti', address: 'Obs', category: 'belgian'})
taishan = Restaurant.new({name: 'Taishan', address: 'Gardens', category: 'japanese'})
shed = Restaurant.new({name: 'Shed', address: 'Muizenberg', category: 'belgian'})
garage = Restaurant.new({name: 'Garage', address: 'Garage', category: 'belgian'})

pindu.save
shanti.save
taishan.save
shed.save
garage.save

puts "Generated #{Restaurant.all.length} restaurants"
