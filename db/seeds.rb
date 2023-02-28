# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Creating 5 fake users with 5 fake equipments...'
5.times do
  user = User.new(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    password: Faker::Internet.password(min_length: 6)
  )
  user.save!
  puts User.all

  5.times do
    equipment = Equipment.new(
      name: Faker::Superhero.name,
      category: ["tents", "ski", "caravans", "hiking", "surf"].sample,
      price: Faker::Number.decimal(l_digits: 2),
      description: Faker::Lorem.paragraph
    )
    equipment.user = user
    equipment.save!
  end
end
puts 'Finished!'

# https://source.unsplash.com/random/

# resource_type = "image"
# type = "upload"
# version = 1234567890
# public_id = "fismpnq3zma80dc2ovjt"
# format = "jpg"
# signature = Cloudinary::Utils.api_sign_request({:public_id=>public_id,
# :version=>version}, Cloudinary.config.api_secret)
# photo = "#{resource_type}/#{type}/v#{version}/#{public_id}.#{format}##
# {signature}"
# Course.create!({ photo: photo )}
