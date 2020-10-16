# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all


50.times do |index|
  product = Product.create!(name: Faker::Commerce.product_name, cost: Faker::Number.decimal(l_digits: 2), country_of_origin: Faker::Address.country) 
  5.times do |index|
    product.reviews.create!(author: Faker::Name.name, rating: rand(1..5), content_body: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false) )       
    end
end