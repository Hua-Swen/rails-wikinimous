# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Generating seed of 10 random articles"

10.times do
  new_article = Article.new(title: Faker::Book.title, content: Faker::Quote.famous_last_words)
  new_article.save
end

puts "Completed generation of seed"
