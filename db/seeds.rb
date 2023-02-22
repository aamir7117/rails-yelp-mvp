# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'creating sample records...'
10.times do
  restaurant = Restaurant.create(name: Faker::Restaurant.name,
                                 category: %w[chinese italian japanese french belgian].sample,
                                 address: Faker::Address.city)
  5.times do
    review = Review.create(content: Faker::Restaurant.review, rating: (0..5).to_a.sample)
    review.restaurant = restaurant
    review.save
  end
end
puts 'Finished'
