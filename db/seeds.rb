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
user_queen = User.create!(email: "thequeen@mail.com", password: "123456", first_name: "Elizabeth", last_name: "Windsor")

van = Listing.create!(title: "Python", user: user_queen, description: "", price: 10.1)
van.photo.attach(io: URI.open('https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U'), filename: "van.jpg", content_type: "image/jpg")
user_queen = User.create!(email: "thequeen@mail.com", password: "123456", first_name: "Elizabeth", last_name: "Windsor")

van = Listing.create!(title: "The Starry Night - Vincent van Gogh", user: user_queen, description: "artist", price: 10.1)
van.photo.attach(io: URI.open('https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U'), filename: "van.jpg", content_type: "image/jpg")

user_queen = User.create!(email: "thequeen@mail.com", password: "123456", first_name: "Elizabeth", last_name: "Windsor")

van = Listing.create!(title: "The Starry Night - Vincent van Gogh", user: user_queen, description: "artist", price: 10.1)
van.photo.attach(io: URI.open('https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U'), filename: "van.jpg", content_type: "image/jpg")

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
