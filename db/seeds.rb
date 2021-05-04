# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'destroy old data'

Article.destroy_all

require 'faker'

10.times do
  article = Article.new(
    title: Faker::DcComics.hero,
    content: Faker::Lorem.paragraph
  )
  article.save
end
