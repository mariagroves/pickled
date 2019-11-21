# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PostCategory.destroy_all
Category.destroy_all
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
  title: "Which chair should I buy for my livingroom?",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere!",
  kind: "text",
)

post2 = Post.new(
  title: "I only have one postcard left from my trip to India",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere!",
  kind: "text",
)

post1.user = user2
post2.user = user1

post1.save!
post2.save!

puts "Finished creating posts"

puts "Creating categories"

category1 = Category.new(
  name: "Lifestyle",
  color: "#EE5746"
)


category1.save!

post_category1 = PostCategory.new
post_category1.post = post1
post_category1.category = category1
post_category1.save!

category2 = Category.new(
  name: "Food",
  color: "#FBE462"
)
category2.save!
post_category2 = PostCategory.new
post_category2.post = post2
post_category2.category = category2
post_category2.save!

puts "Finished creating categories"


