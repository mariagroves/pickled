# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
User.destroy_all

puts "Creating users..."

user1 = User.new(
  email: "user1@lewagon.com",
  password: "123456",
  username: "user1",
  bio: "I am cool"
)

user1.save!

user2 = User.new(
  email: "user2@lewagon.com",
  password: "123456",
  username: "user2",
  bio: "Nice and happy"
)

user2.save!

puts "Finished creating users"

puts "Creating posts..."


post1 = Post.new(
  title: "In a fix need help",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere!",
)

post2 = Post.new(
  title: "Help me!!!!",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere!",
)

post1.user = user2
post2.user = user1

post1.save!
post2.save!

puts "Finished creating posts"


