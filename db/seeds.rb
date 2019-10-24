# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10 times do
    user = User.create!(first_name: Faker::Name.firts_name, last_name: Faker::Last.last_name, description: Faker::Profil.description, email: Faker::Internet.email, age: Faker::Age.age)
end

10 times do
    city = City.create!(name: Faker::Name.name, zip_code: Faker::Code.zip_code)
end

20 times do 
    gossip = Gossip.create!(title: Faker::Title.title, content: Faker::Content.content)
end

10 times do 
    tag = Tag.create!(title: Faker::Title.title)
end

5 times do
    pm = PrivateMessage.create!(content: Faker::Content.content)
end 