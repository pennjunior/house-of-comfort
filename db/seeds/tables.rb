
  puts "Destroying Tables..."
  Table.destroy_all

  puts "Creating Tables..."
  Table.create!(capacity: 4, number: 1)
  Table.create!(capacity: 4, number: 2)
  Table.create!(capacity: 4, number: 3)
  Table.create!(capacity: 2, number: 4)
  Table.create!(capacity: 5, number: 5)
  Table.create!(capacity: 4, number: 6)
  Table.create!(capacity: 4, number: 7)
  Table.create!(capacity: 3, number: 8)
  Table.create!(capacity: 3, number: 9)
  Table.create!(capacity: 6, number: 10)

  puts "Created #{Table.count} tables."
