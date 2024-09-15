require "open-uri"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Destroying menu items and users..."

# Destroy menu items first to avoid foreign key constraint issues
MenuItem.destroy_all
User.destroy_all

puts "Creating Users..."
user = User.create!(
  nickname: "penn",
  email: "admin@example.com",
  password: "123456",
  role: "admin"
)
puts "Created #{User.count} user(s)."

puts "Creating Menu Items..."

cornchaff_image = URI.open("https://res.cloudinary.com/dtkkhk0m0/image/upload/v1726375264/development/fii3fnxznmp7ewzpskv8lmst819i.jpg")
cornchaff = MenuItem.create!(
  name: "CornChaff",
  price: 4500,
  category: "Traditional",
  user: user
)
cornchaff.photo.attach(io: cornchaff_image, filename: "cornchaff", content_type: "image/jpg")
puts "Created CornChaff."

steak_frites_image = URI.open("https://res.cloudinary.com/dtkkhk0m0/image/upload/v1726379674/Steak-Frites08-scaled_l0l65l.jpg")
steak = MenuItem.create!(
  name: "Steak Frites",
  price: 3800,
  category: "Western",
  user: user
)
steak.photo.attach(io: steak_frites_image, filename: "steak", content_type: "image/jpg")
puts "Created Steak Frites."

fufu_veg_image = URI.open("https://res.cloudinary.com/dtkkhk0m0/image/upload/v1726379674/kati-kati-cameroon-1_ykg4tx.webp")
fufu = MenuItem.create!(
  name: "Fufu & Vegetable",
  price: 2200,
  category: "Traditional",
  user: user
)
fufu.photo.attach(io: fufu_veg_image, filename: "fufu", content_type: "image/jpg")
puts "Created Fufu & Vegetable."

fried_chicken_image = URI.open("https://res.cloudinary.com/dtkkhk0m0/image/upload/v1726379673/Facetune_06-10-2020-15-37-58-scaled_alc6rg.jpg")
chicken = MenuItem.create!(
  name: "Fried Chicken",
  price: 5500,
  category: "Steak",
  user: user
)
chicken.photo.attach(io: fried_chicken_image, filename: "chicken", content_type: "image/jpg")
puts "Created Fried Chicken."

spaghetti_image = URI.open("https://res.cloudinary.com/dtkkhk0m0/image/upload/v1726379673/11973-spaghetti-carbonara-ii-DDMFS-4x3-6edea51e421e4457ac0c3269f3be5157_s4h1fl.jpg")
carbonara = MenuItem.create!(
  name: "Spaghetti Carbonara",
  price: 2800,
  category: "Italian",
  user: user
)
carbonara.photo.attach(io: spaghetti_image, filename: "carbonara", content_type: "image/jpg")
puts "Created Spaghetti Carbonara."

tikka_masala_image = URI.open("https://res.cloudinary.com/dtkkhk0m0/image/upload/v1726379673/chicken_tikka_masala-cf431bbe932b8b0eae42c298051350ba_yjenwp.jpg")
tikka = MenuItem.create!(
  name: "Chicken Tikka Masala",
  price: 2500,
  category: "Indian",
  user: user
)
tikka.photo.attach(io: tikka_masala_image, filename: "tikka", content_type: "image/jpg")
puts "Created Chicken Tikka Masala."

caesar_salad_image = URI.open("https://res.cloudinary.com/dtkkhk0m0/image/upload/v1726379673/Avocado-Caesar-Salad-FI-500x500_os7qhu.jpg")
salad = MenuItem.create!(
  name: "Caesar Salad",
  price: 1500,
  category: "Western",
  user: user
)
salad.photo.attach(io: caesar_salad_image, filename: "salad", content_type: "image/jpg")
puts "Created Caesar Salad."

ramen_image = URI.open("https://res.cloudinary.com/dtkkhk0m0/image/upload/v1726379673/20230606152327-25_Instant_ramen_ze7mqh.webp")
ramen_j = MenuItem.create!(
  name: "Ramen",
  price: 1800,
  category: "Japanese",
  user: user
)
ramen_j.photo.attach(io: ramen_image, filename: "ramen", content_type: "image/jpg")
puts "Created Ramen."

fish_chips_image = URI.open("https://res.cloudinary.com/dtkkhk0m0/image/upload/v1726379673/istockphoto-624908024-612x612_xwuzh3.jpg")
fish = MenuItem.create!(
  name: "Fish and Chips",
  price: 3000,
  category: "Western",
  user: user
)
fish.photo.attach(io: fish_chips_image, filename: "fish&chips", content_type: "image/jpg")
puts "Created Fish and Chips."

pad_thai_image = URI.open("https://res.cloudinary.com/dtkkhk0m0/image/upload/v1726379673/images_xygljj.jpg")
pad = MenuItem.create!(
  name: "Pad Thai",
  price: 2000,
  category: "Thai",
  user: user
)
pad.photo.attach(io: pad_thai_image, filename: "pad&thai", content_type: "image/jpg")
puts "Created Pad Thai."

puts "Created #{MenuItem.count} menu items."

# Creating tables
require_relative "seeds/tables.rb"


#creating tables
require_relative "seeds/tables.rb"
