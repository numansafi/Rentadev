# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  first_name: 'John',
  last_name: 'Lithgow',
  email: 'john.lithgow@gmail.com',
  password: '999999'
)

User.create!(
  first_name: 'Adam',
  last_name: 'Armstrong',
  email: 'adam.armstrong@gmail.com',
  password: '999999'
)

User.create!(
  first_name: 'Fraser',
  last_name: 'Forster',
  email: 'fraser.forster@gmail.com',
  password: '999999'
)

User.create!(
  first_name: 'Ellie',
  last_name: 'Sharp',
  email: 'ellie.sharp@gmail.com',
  password: '999999'
)

User.create!(
  first_name: 'Dan',
  last_name: 'Theman',
  email: 'dan.theman@gmail.com',
  password: '999999'
)
