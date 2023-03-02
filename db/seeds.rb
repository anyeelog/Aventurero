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

puts 'Creating fake users with fake equipments...'
##5.times do
  #user = User.new(
    #username: Faker::Internet.username,
    #email: Faker::Internet.email,
    #address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    #password: "123456"
  #)
  #user.save!
  #end

  user1 = User.new(
    username: "RonS23",
    address:"#{Faker::Address.street_address}, #{Faker::Address.city}",
    email: "RonS23@gmail.com",
    password: "123456")
    file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq2NKZi3dp7lDbFaRqkF84Qr5sB5W1txHPBw&usqp=CAU")
    user1.photo.attach(io: file, filename: "RSavatar.png", content_type: "image/png")
  user1.save!

      equipment = Equipment.new(
      name: "One man tent",
      category: "tents",
      price: Faker::Number.decimal(l_digits: 2),
      description: "Used but good condition
      Just look at the photo
      The information is there for the size. Stunning mustard colour",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://funwithmum.com/media/catalog/product/cache/08e721dcd64acb638152146ea5dd04b2/2/0/2020-08-25_flawless0248.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://funwithmum.com/media/catalog/product/cache/08e721dcd64acb638152146ea5dd04b2/f/u/funwithmum103_1.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{2}.png", content_type: "image/png")

    equipment.user = user1
    equipment.save!

    equipment = Equipment.new(
      name: "LOWA RENEGADE GORE-TEX MID MENS HIKING BOOTS SIZE 10",
      category: "hiking",
      price: Faker::Number.decimal(l_digits: 2),
      description: "LOWA RENEGADE GORE-TEX MID MENS HIKING BOOTS SIZE 10. Barely used",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://i.ebayimg.com/images/g/wy0AAOSwJ3hj-TGo/s-l500.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://i.ebayimg.com/images/g/94wAAOSwz0lj-TGv/s-l500.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{2}.png", content_type: "image/png")

    equipment.user = user1
    equipment.save!

    user2 = User.new(
      username: "DwightS68",
      address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
      email: "DwightS68@gmail.com",
      password: "123456")
      file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFkaW1XP_I26bRim3oGw1mSFiMpIJRaWiahg&usqp=CAU")
      user2.photo.attach(io: file, filename: "DSavatar.png", content_type: "image/png")
    user2.save!

    equipment = Equipment.new(
      name: "Inflatable Camping Mattress",
      category: "caravans",
      price: Faker::Number.decimal(l_digits: 2),
      description: "Extra thick Ultim Comfort self-inflating mattress for those campers who want the comfort of their own home.",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://contents.mediadecathlon.com/p2337517/k$d7ef1f2362d84faa15e532aa93caec25/sq/inflatable-camping-mattress-ultim-comfort-70-cm-1-person.jpg?format=auto&f=646x646")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://contents.mediadecathlon.com/p2254622/k$380db1536d92969c4a9d8d6486609187/sq/inflatable-camping-mattress-ultim-comfort-70-cm-1-person.jpg?format=auto&f=969x969")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{2}.png", content_type: "image/png")
    equipment.user = user2
    equipment.save!

    equipment = Equipment.new(
      name: "Hikers Best First Aid Kit",
      category: "hiking",
      price: Faker::Number.decimal(l_digits: 2),
      description: "The woods are dark and full of bears —or, at least, blisters, splinters, biting bugs, and more. Rent this hiking first-aid kit.",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://www.barrabes.com/images/tienda/products/large/45737.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://cdn.thewirecutter.com/wp-content/uploads/2017/09/wilderness-first-aid-kit-lowres-4952.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{2}.png", content_type: "image/png")

    equipment.user = user2
    equipment.save!

    user3 = User.new(
      username: "HikerGal91",
      address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
      email: "HikerGal91@gmail.com",
      password: "123456")
      file = URI.open("https://images.unsplash.com/photo-1608570004513-472c257f2149?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGlrZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60")
      user3.photo.attach(io: file, filename: "HGavatar.png", content_type: "image/png")
    user3.save!

    equipment = Equipment.new(
      name: "3 person pop-up tent",
      category: "tents",
      price: Faker::Number.decimal(l_digits: 2),
      description: "Three-person tent so that you can pitch it in a few minutes. It offers guaranteed mobility",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://contents.mediadecathlon.com/p2318084/k$3547c9cbc231ed95839139842fa1bf6b/sq/3-person-blackout-pop-up-tent-2-seconds-xl-fresh-and-black.jpg?format=auto&f=646x646")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://contents.mediadecathlon.com/p1259815/k$2afaeaa85bd405b6c16ad070081d2965/sq/3-person-blackout-pop-up-tent-2-seconds-xl-fresh-and-black.jpg?format=auto&f=646x646")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{2}.png", content_type: "image/png")
    equipment.user = user3
    equipment.save!

    equipment = Equipment.new(
      name: "Baby Carrier for Hikes",
      category: "hiking",
      price: Faker::Number.decimal(l_digits: 2),
      description: "Carry your baby when hiking while protecting thks to the built-in sunshade",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://contents.mediadecathlon.com/p2130350/k$6be5b456930eff4213e7550e38a08cb6/sq/rigid-baby-carrier-deuter-kid-comfort.jpg?format=auto&f=646x646")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://contents.mediadecathlon.com/p2130359/k$32b6bf30c7bec4e8c8d3a3bb3de147d4/sq/rigid-baby-carrier-deuter-kid-comfort.jpg?format=auto&f=646x646")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{2}.png", content_type: "image/png")

    equipment.user = user3
    equipment.save!


    user4 = User.new(
      username: "SnowBunny2177",
      address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
      email: "SnowBunny2177@gmail.com",
      password: "123456")
      file = URI.open("https://images.unsplash.com/photo-1608570004513-472c257f2149?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGlrZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60")
      user4.photo.attach(io: file, filename: "SBavatar.png", content_type: "image/png")
    user4.save!

    equipment = Equipment.new(
      name: "Grey adjustable ski helmet",
      category: "ski",
      price: Faker::Number.decimal(l_digits: 2),
      description: "Adjustment wheel for the head size and a highly protective outer shell made of ABS.",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://contents.mediadecathlon.com/p1177745/k$c586586b7a1965ad8584f26d5d9754bf/sq/adult-d-ski-helmet-h100-grey.jpg?format=auto&f=969x969")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://contents.mediadecathlon.com/p1177731/k$7c555722c16dcd91cedd4aa1c6853094/sq/adult-d-ski-helmet-h100-grey.jpg?format=auto&f=969x969")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{2}.png", content_type: "image/png")

    equipment.user = user4
    equipment.save!

    equipment = Equipment.new(
      name: "Ski goggles - Adults & Kids",
      category: "ski",
      price: Faker::Number.decimal(l_digits: 2),
      description: "Max field of vision and optimal anti-fogging to ski in bad weather. Can be worn over prescription glasses",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://contents.mediadecathlon.com/p2267079/k$a26b48d6fac59d65970f54ba430585cf/sq/kids-and-adults-bad-weather-skiing-goggles-g-540-s1-light-purple.jpg?format=auto&f=969x969")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://contents.mediadecathlon.com/p2267078/k$675fc24c50d9327ff687ed46e0a1426c/sq/kids-and-adults-bad-weather-skiing-goggles-g-540-s1-light-purple.jpg?format=auto&f=969x969")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{2}.png", content_type: "image/png")

    equipment.user = user4
    equipment.save!
puts 'Finished!'

   Booking.create!(
    start_date: Date.today,
    user_id: user1.id,
    equipment_id: Equipment.last.id,
    end_date: Date.today + 3,
    total_price: 100
  )

  Booking.create!(
    start_date: Date.today,
    user_id: user3.id,
    equipment_id: Equipment.last.id,
    end_date: Date.today + 6,
    total_price: 82
  )
