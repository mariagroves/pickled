# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
PostCategory.destroy_all
PostVote.destroy_all
PostOption.destroy_all
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

user2 = User.new(
  email: "user2@lewagon.com",
  password: "123456",
  username: "user2",
  bio: "Nice and happy"
)

user3 = User.new(
  email: "user3@lewagon.com",
  password: "123456",
  username: "user3",
  bio: "Have a lot of questions"
)

user4 = User.new(
  email: "user4@lewagon.com",
  password: "123456",
  username: "user4",
  bio: "Just wondering about stuff"
)

user5 = User.new(
  email: "user5@lewagon.com",
  password: "123456",
  username: "user5",
  bio: "I'm actually a cat"
)

user6 = User.new(
  email: "user6@lewagon.com",
  password: "123456",
  username: "user6",
  bio: "Always confused"
)

user7 = User.new(
  email: "user7@lewagon.com",
  password: "123456",
  username: "user7",
  bio: "I like to eat ice cream and swim in the sea"
)

user8 = User.new(
  email: "user8@lewagon.com",
  password: "123456",
  username: "user8",
  bio: "I have a lot of deep questions"
)

user9 = User.new(
  email: "user9@lewagon.com",
  password: "123456",
  username: "user9",
  bio: "I'm here to talk to cool people only"
)

user10 = User.new(
  email: "user10@lewagon.com",
  password: "123456",
  username: "user10",
  bio: "I like fashion and movies"
)

user1.save!
user2.save!
user3.save!
user4.save!
user5.save!
user6.save!
user7.save!
user8.save!
user9.save!
user10.save!

puts "Finished creating users"

puts "Creating categories"

category1 = Category.new(
  name: "Lifestyle",
  color: "#EE5746"
)

category2 = Category.new(
  name: "Food",
  color: "#FBE462"
)

category3 = Category.new(
  name: "Travel",
  color: "#F8A73E"
)

category4 = Category.new(
  name: "Fashion",
  color: "#B684FD"
)

category5 = Category.new(
  name: "Nature",
  color: "#6C9B8B"
)

category6 = Category.new(
  name: "Professional",
  color: "#ACACAC"
)

category1.save!
category2.save!
category3.save!
category4.save!
category5.save!
category6.save!

puts "Finished creating categories"


puts "Creating posts, post categories and post options"


post1 = Post.new(
  title: "Which chair should I buy for my livingroom?",
  description: "I'm really into clean interior design.",
  kind: "photo",
)

post2 = Post.new(
  title: "Where should I live after uni?",
  description: "Help me decide!!",
  kind: "text",
)

post3 = Post.new(
  title: "Where should I go for my next minibreak?",
  kind: "photo",
)

post4 = Post.new(
  title: "I need help deciding which dress to get for a party",
  kind: "photo",
)

post5 = Post.new(
  title: "Help me pick a breed of dog to get!!",
  description: "I'm gonna get a puppy soon",
  kind: "photo",
)

post6 = Post.new(
  title: "I need help deciding which job to take",
  description: "Got two job offers, both sound good so not sure what to do.",
  kind: "text",
)

post1.user = user1
post2.user = user2
post3.user = user4
post4.user = user5
post5.user = user9
post6.user = user3

post_category1 = PostCategory.new
post_category2 = PostCategory.new
post_category3 = PostCategory.new
post_category4 = PostCategory.new
post_category5 = PostCategory.new
post_category6 = PostCategory.new
post_category7 = PostCategory.new
post_category8 = PostCategory.new

post_option1 = PostOption.new
post_option2 = PostOption.new
post_option3 = PostOption.new
post_option4 = PostOption.new
post_option5 = PostOption.new
post_option6 = PostOption.new
post_option7 = PostOption.new
post_option8 = PostOption.new
post_option9 = PostOption.new
post_option10 = PostOption.new
post_option11 = PostOption.new
post_option12 = PostOption.new

post_category1.post = post1
post_category1.category = category1

post_category2.post = post2
post_category2.category = category1

post_category3.post = post3
post_category3.category = category3

post_category4.post = post4
post_category4.category = category1

post_category5.post = post4
post_category5.category = category4

post_category6.post = post5
post_category6.category = category1

post_category7.post = post5
post_category7.category = category5

post_category8.post = post6
post_category8.category = category6

post_option1.post = post1
url1 = "https://cdn.homedit.com/wp-content/uploads/2016/07/Elk-chair-from-Gus-Modern.jpg"
post_option1.remote_image_url = url1
post_option2.post = post1
url2 = "http://formula1motor.com/wp-content/uploads/2018/10/modern-hanging-chairs-for-bedrooms-chair-design-ideas-cool-chairs-for-rooms-ball-chair-bubble-hanging-chairs-modern-hanging-chairs-for-bedrooms.jpg"
post_option2.remote_image_url = url2

post_option3.post = post2
post_option3.content = "A flatshare - fun but it will be 600 eur a month"
post_option4.post = post2
post_option4.content = "Back with my parents - less fun but I will save money"

post_option5.post = post3
url3 = "https://media.tacdn.com/media/attractions-splice-spp-360x240/06/74/aa/fc.jpg"
post_option5.remote_image_url = url3
post_option6.post = post3
url4 = "https://www.ticketsrome.com/images/sampledata/Colosseum_Tickets.jpg"
post_option6.remote_image_url = url4

post_option7.post = post4
url5 = "https://i.pinimg.com/originals/61/2d/07/612d077e89311453faa411cd86e8aaba.jpg"
post_option7.remote_image_url = url5
post_option8.post = post4
url6 = "https://images.squarespace-cdn.com/content/v1/5c03e2518ab72242012f3957/1546996225905-XDM46UXTLG9CQDD9O15U/ke17ZwdGBToddI8pDm48kJdeTZ9lEGVUBxRWA2pnC0t7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UXPiFDNnJAJdC8WbhgduYJWgEAYatWyHHVqgQTiY9km3tHPusofpPWJvjehE3dllbQ/DSC_0174_ppcopy.jpg"
post_option8.remote_image_url = url6

post_option9.post = post5
url7 = "https://www.petmd.com/sites/default/files/petmd-shaking-puppy.jpg"
post_option9.remote_image_url = url7
post_option10.post = post5
url8 = "https://www.rd.com/wp-content/uploads/2018/02/02_Adorable-Puppy-Pictures-that-Will-Make-You-Melt_556211362_ANURAK-PONGPATIMET-760x506.jpg"
post_option10.remote_image_url = url8

post_option11.post = post6
post_option11.content = "big company, not much flexibility but a lot of training"
post_option12.post = post6
post_option12.content = "startup - a lot of responsibility and flexibility but lower salary and less training"

post_category1.save!
post_category2.save!
post_category3.save!
post_category4.save!
post_category5.save!
post_category6.save!
post_category7.save!
post_category8.save!

post_option1.save!
post_option2.save!
post_option3.save!
post_option4.save!
post_option5.save!
post_option6.save!
post_option7.save!
post_option8.save!
post_option9.save!
post_option10.save!
post_option11.save!
post_option12.save!

post1.save!
post2.save!
post3.save!
post4.save!
post5.save!
post6.save!

puts "Finished creating posts, post categories and post options"

puts "Creating votes"

  vote1 = PostVote.new
  vote1.user = user1
  vote1.post_option = post_option1

  vote2 = PostVote.new
  vote1.user = user2
  vote1.post_option = post_option1

  vote3 = PostVote.new
  vote1.user = user3
  vote1.post_option = post_option1

  vote4 = PostVote.new
  vote1.user = user4
  vote1.post_option = post_option1

  vote5 = PostVote.new
  vote1.user = user1
  vote1.post_option = post_option3

  vote6 = PostVote.new
  vote1.user = user2
  vote1.post_option = post_option4

  vote7 = PostVote.new
  vote1.user = user3
  vote1.post_option = post_option3

  vote8 = PostVote.new
  vote1.user = user5
  vote1.post_option = post_option6

  vote9 = PostVote.new
  vote1.user = user7
  vote1.post_option = post_option7

  vote10 = PostVote.new
  vote1.user = user8
  vote1.post_option = post_option10

puts "Finished creating votes"
