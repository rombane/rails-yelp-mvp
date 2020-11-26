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
r1 = { name: "Loo's", address: "Canggu", phone_number: "213123" , category: "chinese" }
r2 = { name: "Kuze's", address: "Pererenan", phone_number: "454534" , category: "japanese" }
r3 = { name: "Saunier's", address: "Kuta", phone_number: "445" , category: "french" }
r4 = { name: "Luigi's", address: "Ubud", phone_number: "878686" , category: "italian" }
r5 = { name: "Erik's", address: "Nusa Dua", phone_number: "09898" , category: "belgian" }

[ r1, r2, r3, r4, r5 ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"