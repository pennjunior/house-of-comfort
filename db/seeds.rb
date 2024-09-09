# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "destroying users"
User.destroy_all
puts "Creating Users..."  # Use "..." for clearer separation
user = User.create!(
  nickname: "penn",
  email: "admin@example.com",
  password: "123456",
  role: "admin"
)
puts "Created #{User.count} users."
puts "destroying Tables"
Table.destroy_all
puts "Creating Tables..."
Table.create!(
  capacity: 4,
  number: 1
)
Table.create!(
  capacity: 4,
  number: 2
)
Table.create!(
  capacity: 4,
  number: 3
)
Table.create!(
  capacity: 2,
  number: 4
)
Table.create!(
  capacity: 5,
  number: 5
)
Table.create!(
  capacity: 4,
  number: 6
)
Table.create!(
  capacity: 4,
  number: 7
)
Table.create!(
  capacity: 3,
  number: 8
)
Table.create!(
  capacity: 3,
  number: 9
)
Table.create!(
  capacity: 6,
  number: 10
)
puts "Created #{Table.count} tables."
puts "destroying menu_items"
MenuItem.destroy_all
puts "Creating Menu Items..."
MenuItem.create!(
  name: "CornChaff",
  price: 4500,
  category: "Traditional",
  user: user
)
MenuItem.create!(
  name: "Steak Frites",
  price: 3800,
  category: "Western",
  user: user
)
MenuItem.create!(
  name: "Fufu & Vegetable",
  price: 2200,
  category: "Traditional",
  user: user
)
MenuItem.create!(
  name: "Fried Chicken",
  price: 5500,
  category: "Stake",
  user: user
)
MenuItem.create!(
  name: "Spaghetti Carbonara",
  price: 2800,
  category: "Italian",
  user: user
)
MenuItem.create!(
  name: "Chicken Tikka Masala",
  price: 2500,
  category: "Indian",
  user: user
)
MenuItem.create!(
  name: "Caesar Salad",
  price: 1500,
  category: "Western",
  user: user
)
MenuItem.create!(
  name: "Ramen",
  price: 1800,
  category: "Japanese",
  user: user
)
MenuItem.create!(
  name: "Fish and Chips",
  price: 3000,
  category: "Western",
  user: user
)
MenuItem.create!(
  name: "Pad Thai",
  price: 2000,
  category: "Thai",
  user: user
)
puts "Created #{MenuItem.count} menu items."
