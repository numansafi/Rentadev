# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding starting"
User.destroy_all
Listing.destroy_all

10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password"
  )
  user.save!
  Listing.create!(
    user: user,
    title: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price: rand(0..100)
  )
end

puts "Seeding finished!"
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
