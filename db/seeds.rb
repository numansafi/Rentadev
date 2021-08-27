# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
puts "Seeding starting"
User.destroy_all
Listing.destroy_all


# 10.times do
#   user = User.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: "password"
#   )
#   user.save!
#   Listing.create!(
#     user: user,
#     title: Faker::ProgrammingLanguage.name,
#     description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
#     price: rand(0..100)
#   )
# end
user_queen = User.create!(email: "thequeen@mail.com", password: "123456", first_name: "Dan", last_name: "Sterling")

van = Listing.create!(title: "Ruby/Python", user: user_queen, description: "10 years experience using Python for data science.", price: 20.0)
van.photo.attach(io: URI.open('https://constructionmaguk.co.uk/wp-content/uploads/2018/06/do-developer-profile.png'), filename: "van.jpg", content_type: "image/png")

user_hannah = User.create!(email: "queen@mail.com", password: "123456", first_name: "Hannah", last_name: "Tow")

hannah = Listing.create!(title: "CSS/HTML", user: user_hannah, description: "MSc in Software Engineering", price: 60.0)
hannah.photo.attach(io: URI.open('https://miro.medium.com/max/1400/1*M7nNCFBIGyf13xQ7gY0swA.jpeg'), filename: "hannah.jpeg", content_type: "image/jpeg")

user_jane = User.create!(email: "jane@mail.com", password: "123456", first_name: "Jane", last_name: "Morris")

jane = Listing.create!(title: "Ruby/JavaScript", user: user_jane, description: "Self taught developer ", price: 35.0)
jane.photo.attach(io: URI.open('https://pixomatic.us/blog/wp-content/uploads/2019/11/pixomatic_1572877263963.png'), filename: "jane.jpg", content_type: "image/png")

# 5.times do
#   user = User.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: "password"
#   )
#   user.save!
#   Listing.create!(
#     user: user,
#     title: Faker::ProgrammingLanguage.name,
#     description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
#     price: rand(0..100)
#   )
# end

# puts "Seeding finished!"

# User.create!(
#   first_name: 'John',
#   last_name: 'Lithgow',
#   email: 'john.lithgow@gmail.com',
#   password: '999999'
# )

# User.create!(
#   first_name: 'Adam',
#   last_name: 'Armstrong',
#   email: 'adam.armstrong@gmail.com',
#   password: '999999'
# )

# User.create!(
#   first_name: 'Fraser',
#   last_name: 'Forster',
#   email: 'fraser.forster@gmail.com',
#   password: '999999'
# )

# User.create!(
#   first_name: 'Ellie',
#   last_name: 'Sharp',
#   email: 'ellie.sharp@gmail.com',
#   password: '999999'
# )

# User.create!(
#   first_name: 'Dan',
#   last_name: 'Theman',
#   email: 'dan.theman@gmail.com',
#   password: '999999'
# )
