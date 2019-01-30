# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

7.times do |index|
  user = User.create!(first_name: Faker::Lovecraft.deity, last_name: Faker::Color.color_name, email: Faker::Internet.email)
end

7.times do |index|
  article = Article.create!(title: Faker::Lovecraft.location, description: Faker::Lovecraft.fhtagn(1))
end

7.times do
  comment = Comment.create(content: Faker::Lovecraft.sentence, user_id: rand(User.first.id..User.last.id), article_id: rand(Article.first.id..Article.last.id))
end

7.times do
  category = Category.create(name: Faker::Space.moon)
end
