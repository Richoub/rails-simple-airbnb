# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning up database"
Flat.destroy_all
puts "database is clean"

puts "adding to the database"
10.times do
  flat = Flat.create!(
    name: Faker::Marketing.buzzwords,
    address: Faker::Address.street_address,
    description: Faker::Marketing.buzzwords,
    price_per_night: Faker::Number.number(digits: 3),
    number_of_guests: Faker::Number.number(digits: 1)
  )
  puts "Flat #{flat.id} has been created"
end
puts "done"
