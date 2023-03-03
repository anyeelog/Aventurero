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
      The information is there for the size. Stunning camo pattern",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://i.ebayimg.com/images/g/~YoAAOSw3PpeqDpb/s-l1600.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://i.ebayimg.com/images/g/RwQAAOSw44piCWKv/s-l1600.jpg")
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

    equipment = Equipment.new(
      name: "HOBBY 700 ISLAND BED TWIN AXLE 2005 Caravan",
      category: "caravans",
      price: Faker::Number.decimal(l_digits: 2),
      description: "U shaped lounge to the rear that converts into a king size bed. Full central kitch with oven, grill on the hob, plenty of benchspace. Full washroom. ",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://i.ebayimg.com/images/g/SVUAAOSw1gljjSR-/s-l500.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://i.ebayimg.com/images/g/FjkAAOSwHQljjSR7/s-l1600.jpg")
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
      category: "hiking",
      price: Faker::Number.decimal(l_digits: 2),
      description: "Extra thick Ultim Comfort self-inflating mattress for those campers who want the comfort of their own home.",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://i.ebayimg.com/images/g/aj8AAOSwzgJi5eUO/s-l500.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://i.ebayimg.com/images/g/ubgAAOSw6zpi5eUs/s-l500.jpg")
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
      file = URI.open("https://www.thehikingsociety.com.au/wp-content/uploads/2021/08/AdobeStock_36957360-scaled.jpeg")
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
      name: "Three person pop-up tent",
      category: "tents",
      price: Faker::Number.decimal(l_digits: 2),
      description: "Three-person tent so that you can pitch it in a few minutes. It offers guaranteed mobility",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://www.canvascamp.com/media/catalog/product/cache/b884b12e351bcd1c36416cc09494ec90/s/i/sibley_300_ultimate_interior_window.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://www.canvascamp.com/media/catalog/product/cache/b884b12e351bcd1c36416cc09494ec90/s/i/sibley_300_ultimate_meadow_woman_camper.jpg")
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
      file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSqN9ZI5c4w5KORp7NVhcJ_CGreOe7im7GtZTvsOtGaiZOtpWSxfyK02Khi01Tnrqfu3g&usqp=CAU")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://www.outsideonline.com/wp-content/uploads/2019/01/11/baby-carrier-dad_s.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{2}.png", content_type: "image/png")

    equipment.user = user3
    equipment.save!

    equipment = Equipment.new(
      name: "Vintage surfboard",
      category: "surf",
      price: Faker::Number.decimal(l_digits: 2),
      description: "Vintage and collector surfboards aren’t always easy to find and ones in good condition (like this one!) certainly aren’t cheap",
      address: Faker::Address.country)
      equipment.save
      file = URI.open("https://www.secondhandboards.com/slir/c390x540/https://www.secondhandboards.com/boardimages/img-16150379783.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://www.secondhandboards.com/slir/c390x540/https://www.secondhandboards.com/boardimages/img-16150377104.jpg")
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
      file = URI.open("https://images.boardriders.com/globalGrey/roxy-products/all/default/large/erjtl03056_roxy,l_kvj0_frt1.jpg")
      equipment.photos.attach(io: file, filename: "#{equipment.name}#{1}.png", content_type: "image/png")
      file = URI.open("https://images.boardriders.com/globalGrey/roxy-products/all/default/xlarge/erjtl03056_roxy,l_kvj0_frt3.jpg")
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
