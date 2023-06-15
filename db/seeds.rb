require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
array = []
i = 0
while i < 15
  array << {name: Faker::Name.name, address: Faker::Address.full_address, description: Faker::Lorem.paragraph(sentence_count: 15, random_sentences_to_add: 10), price_per_night: Faker::Number.between(from: 45, to: 500), number_of_guest: Faker::Number.between(from: 1, to: 12), image: "https://loremflickr.com/320/240/house" }
  i += 1
end

array.each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
