# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require "open-uri"

puts "Cleaning database..."
Booking.destroy_all
Equipment.destroy_all
User.destroy_all

puts 'Creating 5 fake users with 5 fake equipments...'
5.times do
  user = User.new(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    password: "123456"
  )
  user.save!

  2.times do
    equipment = Equipment.new(
      name: Faker::Superhero.name,
      category: ["tents", "ski", "caravans", "hiking", "surf"].sample,
      price: Faker::Number.decimal(l_digits: 2),
      description: Faker::Lorem.paragraph,
      address: Faker::Address.country
    )
    equipment.user = user

    i = 1

    2.times do

      file = URI.open("https://source.unsplash.com/random/")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{i}.png", content_type: "image/png")
      i += 1
    end
    equipment.save!

  end
end
puts 'Finished!'

   Booking.create!(
    start_date: Date.today,
    user_id: User.first.id,
    equipment_id: Equipment.first.id,
    end_date: Date.today + 1,
    total_price: 100
  )

  Booking.create!(
    start_date: Date.today,
    user_id: User.first.id,
    equipment_id: Equipment.last.id,
    end_date: Date.today + 1,
    total_price: 150
    )
# link to get random photos from internet: https://source.unsplash.com/random/
