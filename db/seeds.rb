CATEGORY = %w[chinese italian japanese french belgian]

puts "Destroying all Restaurants"
Restaurant.destroy_all

puts "Creating new Restaurants"

5.times do
  Restaurant.create(name: Faker::Restaurant.name,
                 address: Faker::Address.full_address,
                 category: CATEGORY.sample)
  puts "Restaurant created"
end

puts "All Restaurants created"
puts "-----------------------"
