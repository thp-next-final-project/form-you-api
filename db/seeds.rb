# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

p " ********************************* "
p " *                               * "
p " *         BEGIN OF SEED         * "
p " *                               * "
p " ********************************* "
###########################################
## PARTIE DE DESTRUCTION DE DATA A COMMENTER AVANT D'ENVOYER SUR HEROKU
# p "Destroy curent data..."

# p "Destroying User... #{User.count} "
# p "Destroying Formation... #{Formation.count} "
# p "Destroying Room... #{Room.count} "
# p "Destroying Promotion... #{Promotion.count} "
# p "Destroying Category... #{Category.count} "
# p "Destroying PromotionUserJointure... #{PromotionUserJointure.count} "
# p "Destroying CategoryFormationJointure... #{CategoryFormationJointure.count} "

# User.destroy_all
# Formation.destroy_all
# Room.destroy_all
# Promotion.destroy_all
# CategoryFormationJointure.destroy_all
# PromotionUserJointure.destroy_all
# Category.destroy_all

# p "-----------------------"
# p "-----------------------"
#############################################
# Admin

# User
30.times do |i|
  User.create!(
    email: "user" + i.to_s + "@yopmail.com",
    encrypted_password: "user" + i.to_s,
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name, 
    role: "user",
    is_validated: false
  )
end

# Profs
5.times do |i|
  User.create!(
    email: "prof" + i.to_s + "@yopmail.com",
    encrypted_password: "prof" + i.to_s,
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name, 
    role: "professor",
    is_validated: true
  )
end

# Admin
2.times do |i|
  User.create!(
    email: "admin" + i.to_s + "@yopmail.com",
    encrypted_password: "admin" + i.to_s,
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name, 
    role: "admin",
    is_validated: true
  )
end
p "#{tp User.all}"
p "Creation Users admin, professors, users... #{User.count}"
puts "DONE"
p "-----------------------"
p "-----------------------"

# Rooms
10.times do |i|
  Room.create!(
    name: Faker::Address.city
  )
end
p "#{tp Room.all}"
p "Creation Rooms... #{Room.count}"
puts "DONE"
p "-----------------------"
p "-----------------------"

# Categories
10.times do |i|
  Category.create!(
    title: Faker::Mountain.name
  )
end
p "#{tp Category.all}"
p "Creation Categories... #{Category.count}"
puts "DONE"
p "-----------------------"
p "-----------------------"

# Formations
10.times do |i|
  Formation.create!(
    title: Faker::Movie.title,
    description: Faker::Movies::StarWars.quote,
  )
end
p "#{tp Formation.all}"
p "Creation Formations... #{Formation.count}"
puts "DONE"
p "-----------------------"
p "-----------------------"

# Jointure Formations Categories
20.times do |i|
  CategoryFormationJointure.create!(
    category_id: rand(1..10),
    formation_id: rand(1..10)
  )
end
p "#{tp CategoryFormationJointure.all}"
p "Creation set categories... #{CategoryFormationJointure.count}"
puts "DONE"
p "-----------------------"
p "-----------------------"

# Promotions
20.times do |i|
  Promotion.create!(
    date: DateTime.now(),
    nbr_student: 20,
    note: rand(20),
    room_id: rand(1..10),
    formation_id: rand(1..10)
  )
end
p "#{tp Promotion.all}"
p "Creation Promotions... #{Promotion.count}"
puts "DONE"
p "-----------------------"
p "-----------------------"

# Jointure Promotions users

20.times do |i|
  PromotionUserJointure.create!(
    user_id: rand(1..10),
    promotion_id: rand(1..20)
  )
end
p "#{tp PromotionUserJointure.all}"
p "Creation set promotions... #{PromotionUserJointure.count}"
puts "DONE"
p "-----------------------"
p "-----------------------"

p " ********************************* "
p " *                               * "
p " *          END OF SEED          * "
p " *                               * "
p " ********************************* "
