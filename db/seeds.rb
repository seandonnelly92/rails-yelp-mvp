# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning database..."
Restaurant.destroy_all
Review.destroy_all

puts "Creating restaurants and reviews..."

# RESTAURANTS
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
restaurants = [dishoom, pizza_east]

# REVIEWS
review_one = {content: "It was great", rating: "4", restaurant_id: "1"}
reviews = [review_one]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

reviews.each do |attributes|
  review = Restaurant.create!(attributes)
  puts "Created #{review.name}"
end

puts "Finished!"
