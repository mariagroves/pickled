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
#size is used later many times
SIZE = 30

puts "Creating users..."
#random users
SIZE.times do |n|
  User.create(email: "user#{n}@lewagon.com", password: "123456", username: "user#{n}", bio: "I am awesome")
end

puts "Finished creating users"

puts "Creating categories"

lifestyle = Category.create(
  name: "Lifestyle",
  color: "#EE5746"
)

food = Category.create(
  name: "Food",
  color: "#FBE462"
)

travel = Category.create(
  name: "Travel",
  color: "#F8A73E"
)

fashion = Category.create(
  name: "Fashion",
  color: "#B684FD"
)

nature = Category.create(
  name: "Nature",
  color: "#6C9B8B"
)

professional = Category.create(
  name: "Professional",
  color: "#ACACAC"
)

puts "Finished creating categories"

puts "Creating posts, post categories and post options"

POSTS = [
  { #post1
    title: "Which chair should I buy for my livingroom?",
    description: "I'm really into clean interior design.",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://i.pinimg.com/564x/9b/dd/58/9bdd58e06b4500a9adcd9b7b0b877978.jpg" },
      { image: "https://i.pinimg.com/564x/61/36/8f/61368f1a241409223472d45e21199023.jpg" }
    ]
  },

  { #post2
    title: "Where should I live after uni?",
    description: "Help me decide!!",
    kind: "text",
    category: professional,
    post_options: [
      { content: "A flatshare - fun but it will be 600 eur a month" },
      { content: "Back with my parents - less fun but I will save money" }
    ]
  },

  { #post3
    title: "Where should I go for my next minibreak? Paris? NY?",
    description: "Torned between Paris and NY, help!",
    kind: "photo",
    category: travel,
    post_options: [
      { image: "https://i.pinimg.com/564x/64/4e/f2/644ef26a4b28f51e041aa386e54f80be.jpg" },
      { image: "https://i.pinimg.com/564x/b6/0c/27/b60c27a17143da1a07cacf182e9cf7ce.jpg" }
    ]
  },

  { # sponsored post supermarket
    title: "Sponsored: This week discounts! coffee or tea?",
    description: "All Copenhagen Irma Locations",
    kind: "photo",
    category: food,
    post_options: [
      { image: "https://irma.dk/media/608889/349-8910.jpg" },
      { image: "https://irma.dk/media/1297274/fredsted-beskaaret.jpg" }
    ]
  }

  { #post4
    title: "I need help deciding which top to get for a bbq party",
    description: "for when it gets chilly after 4pm",
    kind: "photo",
    category: fashion,
    post_options: [
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/54832936_095_d?$xlarge$&hei=900&qlt=80&fit=constrain" },
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/54280284_004_b?$xlarge$&hei=900&qlt=80&fit=constrain" }
    ]
  },

  { #post5
    title: "Help me pick a breed of dog to get!!",
    description: "I'm gonna get a puppy soon",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/43849520_030_b?$xlarge$&hei=900&qlt=80&fit=constrain" },
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/43849876_028_b?$xlarge$&hei=900&qlt=80&fit=constrain" }
    ]
  },

  { #post6
    title: " need help deciding which job to take",
    description: "Got two job offers, both sound good so not sure what to do.",
    kind: "text",
    category: professional,
    post_options: [
      { content: "big company, not much flexibility but a lot of training" },
      { content: "startup - a lot of responsibility and flexibility but lower salary and less training" }
    ]
  },

  { #post7
    title: "What should I eat for lunch today?",
    description: "So hungry and grumpy!",
    kind: "photo",
    category: food,
    post_options: [
      { image: "https://www.seriouseats.com/recipes/images/2015/03/20150318-ricotta-gnocchi-how-to-food-lab-recipe-37a.jpg" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/72205825_782485378845721_5516537330109046199_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=101&oh=af89f8fda70c3079459bfd13b75155b9&oe=5E825667" }
    ]
  },

  { #post8
    title: "What's healthier?",
    description: "these are so cute, yummy",
    kind: "photo",
    category: food,
    post_options: [
      { image: "https://i.pinimg.com/564x/cc/af/74/ccaf74fd55e11d91fe6c50fb8d0b6f38.jpg" },
      { image: "https://i.pinimg.com/564x/5f/e7/d1/5fe7d15c98411409d22d6af467e718ff.jpg" }
    ]
  },

  { #post9
    title: "Breakup comfort food, help!",
    description: "I really wanna feel good, so sad!",
    kind: "photo",
    category: food,
    post_options: [
      { image: "https://i0.wp.com/media.zeinaskitchen.se/2015/01/fish-and-chips-7-e1486452937684.jpg?resize=1080%2C720&ssl=1" },
      { image: "https://i.pinimg.com/564x/59/f4/95/59f495c8036376f27fe92dc08a1d7583.jpg" }
    ]
  },

  { #post10
    title: "should I travel alone or w hot date?",
    description: "Met this totally hot guy on Tinder...",
    kind: "text",
    category: travel,
    post_options: [
      { content: "I could go to China w hot Tinder date I met a few weeks ago." },
      { content: "I could go to China alone, find a local date." }
    ]
  },

  { #post11
    title: "Should I go to Poland in winter?",
    description: "I live in Denmark, winters are harsh here too",
    kind: "text",
    category: travel,
    post_options: [
      { content: "Maybe I should go to Poland in winter for 2 weeks this coming holiday break. W FRIENDS" },
      { content: "Perhaps I should stay here at home in Copenhagen, save money. ALONE W MOM" }
    ]
  },

  { #post12
    title: "Help! I need new glasses 🤓",
    description: "Can't see much these days",
    kind: "photo",
    category: fashion,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/72321494_1208968899301084_1500559646519241228_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=104&oh=5d752196211099d462758ab39595c570&oe=5E795259" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/73214070_2614530042001216_7752202555294831367_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=104&oh=1590735682356a8798dd266b74333f93&oe=5E74D208" }
    ]
  },

  { #post13
    title: "Which dancing shoes are best for hip-hop?",
    description: "Can't see much these days",
    kind: "photo",
    category: fashion,
    post_options: [
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/49278781_023_b?$xlarge$&hei=900&qlt=80&fit=constrain" },
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/48681548_011_b?$xlarge$&hei=900&qlt=80&fit=constrain" }
    ]
  },

  { #Sponsored post bar
    title: "Sponsored: Friday discount! Mojitos or Homemade Wine?",
    description: "Pompette Møllegade 3, 2200 København - 3pm to 5pm",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://content.readymag.com/5b968552eb07570065c93abb/1157701/upload-741c8ba0-b5c6-11e8-a9cf-2f8fb6133b67.jpg" },
      { image: "https://i.pinimg.com/236x/ae/5e/72/ae5e72e4ba1da1072c3ed1327e72f889.jpg"}
    ]
  },


  { #post14
    title: "Looking for plants for my garden🌿",
    description: "Can't see much these days",
    kind: "photo",
    category: nature,
    post_options: [
      { image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.livingstylelandscapes.com.au%2Flandscaping%2Fwp-content%2Fuploads%2F2014%2F02%2FIMG_0698.jpg&f=1&nofb=1" },
      { image: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.cooltropicalplants.com%2Fimage-files%2Ftropical-garden06.jpg&f=1&nofb=1" }
    ]
  },

  { #post15
    title: "Good luck plants? which one is good for good fortune?",
    description: "Can't see much these days",
    kind: "photo",
    category: nature,
    post_options: [
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/52108032_070_b?$xlarge$&hei=900&qlt=80&fit=constrain" },
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/49345440_111_d?$xlarge$&hei=900&qlt=80&fit=constrain" }
    ]
  },

  { #post16
    title: "What skills are required for pro interior designer?",
    description: "I want to get a job in interior design",
    kind: "text",
    category: professional,
    post_options: [
      { content: "Designers make drawings all day by hand" },
      { content: "I want to get a job in interior design" }
    ]
  },

  { #post17
    title: "Which restaurant in Copenhagen should I work at?",
    description: "Need to make some $$",
    kind: "photo",
    category: professional,
    post_options: [
      { image: "https://i.pinimg.com/564x/7a/7d/26/7a7d2690d3eab88046ec3920918b9a45.jpg" },
      { image: "https://i.pinimg.com/564x/43/fa/b5/43fab5fca343d80608e7881448c2469b.jpg" }
    ]
  },

]

POSTS.each do |post_params|
  puts "Creating Post"
  post = Post.new(title: post_params[:title], description: post_params[:description], kind: post_params[:kind], user: User.all.sample)
  #build categories outside params bc they are not random
  post.post_categories.build(category: post_params[:category])
  #build post options
  post_params[:post_options].each do |option_param|
    post_option = post.post_options.build(option_param)
    post_option.remote_image_url = option_param[:image]
  end

  post.save!

  # build votes
  puts "Generating post votes"
  number = rand(1..10)
  User.all.sample(number).each do |user|
    vote = post.post_options.sample.post_votes.build(user: user)
    vote.save!
  end
  # p post.categories
end
  puts "Finished creating posts, post categories and post options"
  puts "Finished creating votes"

