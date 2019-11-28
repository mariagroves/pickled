# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
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
username = Faker::Games::Pokemon.name
  User.create(email: "user#{n}@lewagon.com", password: "123456", username: username, bio: "I am awesome", image: "https://i.imgur.com/7B5ATLJ.jpg")
end

puts "Finished creating users"

puts "Creating categories"

nature = Category.create(
  name: "Nature",
  color: "#4F93B0" #blue

)

fashion = Category.create(
  name: "Fashion",
  color: "#6C9B8B" #green

)

lifestyle = Category.create(
  name: "Lifestyle",
  color: "#D28EA5" #barbie pink
)

work = Category.create(
  name: "Work",
  color: "#EDC5C5" #pastel pink
)

food = Category.create(
  name: "Food",
  color: "#EAC29F" #pastel yellow
)

travel = Category.create(
  name: "Travel",
  color: "#A287A8" #lilac
)



puts "Finished creating categories"

puts "Creating posts, post categories and post options"

POSTS = [

  {
    title: "Late Sunday breakfast options",
    description: "Whats more delish? 💕",
    kind: "photo",
    category: food,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/73278648_2128536884117287_1644905258954337614_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=107&oh=9b47e754ed50c6f3895384f35ca0c6aa&oe=5E764170" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/70406535_153721612395429_2467228445631022106_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=109&oh=d4ccc09527aa41f144e082b1c3b19304&oe=5E75F980" }
    ]
  },

  {
    title: "What should I wear while pregnant🤰",
    description: "So fat! I still wanna look good",
    kind: "photo",
    category: fashion,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/65783910_495240754544917_2362018459531406083_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=101&oh=3ac6ebb4ec7e995dcf97e9b94b5761d3&oe=5E7532FD" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/65953505_2314337295474158_2983193857441811966_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=102&oh=5a89f06e50157b685423ab78675fdfca&oe=5E6CDE16" }
    ]
  },

  {
    title: "Which chair should I buy for my livingroom?",
    description: "I'm really into clean interior design.",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://i.pinimg.com/564x/9b/dd/58/9bdd58e06b4500a9adcd9b7b0b877978.jpg" },
      { image: "https://i.pinimg.com/564x/61/36/8f/61368f1a241409223472d45e21199023.jpg" }
    ]
  },

  {
    title: "Where should I live after uni?",
    description: "Help me decide!!",
    kind: "text",
    category: work,
    post_options: [
      { content: "A flatshare - fun but it will be 600 eur a month" },
      { content: "Back with my parents - less fun but I will save money" }
    ]
  },

  {
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
  },


  {
    title: "I need help deciding which top to get for a bbq party",
    description: "for when it gets chilly after 4pm",
    kind: "photo",
    category: fashion,
    post_options: [
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/54832936_095_d?$xlarge$&hei=900&qlt=80&fit=constrain" },
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/54280284_004_b?$xlarge$&hei=900&qlt=80&fit=constrain" }
    ]
  },

  {
    title: "Art decisions, which one is more artsy?",
    description: "Need to print only one",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/65944011_2161480843960704_7381176663259906134_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=100&oh=0be1ef50a98ab4944fcc4619906b4814&oe=5E871EAB" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/65586827_133854334486518_8314387582186460958_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=106&oh=5180e3a56ea49554bcdfdc76e2c346b6&oe=5E833AC4" }
    ]
  },

  {
    title: "Help me pick a breed of dog to get!!",
    description: "I'm gonna get a puppy soon",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/43849520_030_b?$xlarge$&hei=900&qlt=80&fit=constrain" },
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/43849876_028_b?$xlarge$&hei=900&qlt=80&fit=constrain" }
    ]
  },

  {
    title: " need help deciding which job to take",
    description: "Got two job offers, both sound good so not sure what to do.",
    kind: "text",
    category: work,
    post_options: [
      { content: "big company, not much flexibility but a lot of training" },
      { content: "startup - a lot of responsibility and flexibility but lower salary and less training" }
    ]
  },

  { #sponsored undies
    title: "Sponsored: What is your ideal self care routine?",
    description: "Selfcare is important, specially in your period",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://cdn.shopify.com/s/files/1/0795/1599/t/166/assets/collection-crimson-4.jpg?536312" },
      { image: "https://cdn.shopify.com/s/files/1/0795/1599/t/166/assets/collection-crimson-1.jpg?536312" }
    ]
  },

  {
    title: "What should I eat for lunch today?",
    description: "So hungry and grumpy!",
    kind: "photo",
    category: food,
    post_options: [
      { image: "https://www.seriouseats.com/recipes/images/2015/03/20150318-ricotta-gnocchi-how-to-food-lab-recipe-37a.jpg" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/72205825_782485378845721_5516537330109046199_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=101&oh=af89f8fda70c3079459bfd13b75155b9&oe=5E825667" }
    ]
  },

  {
    title: "What's healthier?",
    description: "these are so cute, yummy",
    kind: "photo",
    category: food,
    post_options: [
      { image: "https://i.pinimg.com/564x/cc/af/74/ccaf74fd55e11d91fe6c50fb8d0b6f38.jpg" },
      { image: "https://i.pinimg.com/564x/5f/e7/d1/5fe7d15c98411409d22d6af467e718ff.jpg" }
    ]
  },

  {
    title: "Breakup comfort food, help!",
    description: "I really wanna feel good, so sad!",
    kind: "photo",
    category: food,
    post_options: [
      { image: "https://i0.wp.com/media.zeinaskitchen.se/2015/01/fish-and-chips-7-e1486452937684.jpg?resize=1080%2C720&ssl=1" },
      { image: "https://i.pinimg.com/564x/59/f4/95/59f495c8036376f27fe92dc08a1d7583.jpg" }
    ]
  },

  {
    title: "should I travel alone or w hot date?",
    description: "Met this totally hot guy on Tinder...",
    kind: "text",
    category: travel,
    post_options: [
      { content: "I could go to China w hot Tinder date I met a few weeks ago." },
      { content: "I could go to China alone, find a local date." }
    ]
  },

  {
    title: "Should I go to Poland in winter?",
    description: "I live in Denmark, winters are harsh here too",
    kind: "text",
    category: travel,
    post_options: [
      { content: "Maybe I should go to Poland in winter for 2 weeks this coming holiday break. W FRIENDS" },
      { content: "Perhaps I should stay here at home in Copenhagen, save money. ALONE W MOM" }
    ]
  },

  {
    title: "Help! I need new glasses 🤓",
    description: "Can't see much these days",
    kind: "photo",
    category: fashion,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/72321494_1208968899301084_1500559646519241228_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=104&oh=5d752196211099d462758ab39595c570&oe=5E795259" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/73214070_2614530042001216_7752202555294831367_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=104&oh=1590735682356a8798dd266b74333f93&oe=5E74D208" }
    ]
  },

  {
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


  {
    title: "Looking for plants for my garden🌿",
    description: "Can't see much these days",
    kind: "photo",
    category: nature,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/73079187_1393614110820347_6345274328040251775_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=111&se=7&oh=6a716db87fbb2e253a8e15fbaf069b17&oe=5E7186F1" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/75169225_111093663523514_9161101731496531324_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=102&oh=cd5200bd97e990d2bc9be81f495d1100&oe=5E745C86" }
    ]
  },

  {
    title: "Good luck plants? which one is good for good fortune?",
    description: "Can't see much these days",
    kind: "photo",
    category: nature,
    post_options: [
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/52108032_070_b?$xlarge$&hei=900&qlt=80&fit=constrain" },
      { image: "https://s7d5.scene7.com/is/image/UrbanOutfitters/49345440_111_d?$xlarge$&hei=900&qlt=80&fit=constrain" }
    ]
  },

  {
    title: "What skills are required for pro interior designer?",
    description: "I want to get a job in interior design",
    kind: "text",
    category: work,
    post_options: [
      { content: "Designers make drawings all day by hand" },
      { content: "Designers make drawings all day on the computer" }
    ]
  },

  {
    title: "Which restaurant in Copenhagen should I work at?",
    description: "Need to make some $$",
    kind: "photo",
    category: work,
    post_options: [
      { image: "https://i.pinimg.com/564x/7a/7d/26/7a7d2690d3eab88046ec3920918b9a45.jpg" },
      { image: "https://i.pinimg.com/564x/43/fa/b5/43fab5fca343d80608e7881448c2469b.jpg" }
    ]
  },

   {
    title: "With or without coffee?",
    description: "Not sure what to post to IG",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/74861206_160042712056821_6319163215074979259_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=109&oh=b93f51e8d0ad8fb5cc1aee0ac9866fea&oe=5E6F4624" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/72927009_2441741052766407_873655718120659677_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=103&oh=1cec977403a4c53119a6411f9b082a7e&oe=5E7AAD0B" }
    ]
  },

  {
    title: "Help me choose best look green or black?",
    description: "Thanks Giving dinner party",
    kind: "photo",
    category: fashion,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/71233631_186916962349804_4443306640570535778_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=104&oh=efee63444c06b3a3ae8097ffa7b96c6e&oe=5E72C931" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/74987354_1190579494470360_463857070878392874_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=100&oh=ca6408abb357a9b9636dfe203a7178fa&oe=5E76B69F" }
    ]
  },

  { #sponsored natural condoms
    title: "Sponsored: safe fun times",
    description: "Black Friday Discounts🎅",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://dxkmbl8uwuv9p.cloudfront.net/sustain-natural/1533780500389/faada700-77ab-4736-a4ff-5ab1833d6173/UTCONDOMS1.jpg" },
      { image: "https://dxkmbl8uwuv9p.cloudfront.net/sustain-natural/1548161455726/86ee302f-bbe9-4f54-85ce-03c1b61e606d/Unscented_lube_pdp_1_with_sticker.jpg" }
    ]
  },

  {
    title: "Nails nails, which nail color is best?",
    description: "They're both such pretty colors, its hard to choose",
    kind: "photo",
    category: fashion,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/66655803_853575415024473_7573328545710723770_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=109&oh=6cfd44ae4578ebdb76d0930b66ab8d66&oe=5E66A71B" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/56835799_161798764829294_4931048040003400896_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=102&oh=da63498e66cdd2bde69e36819677fb03&oe=5E7A4191" }
    ]
  },

  {
    title: "Can you help me choose a first date dress?",
    description: "Love them both. We are having French food tonight",
    kind: "photo",
    category: fashion,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/74707634_1081157258751915_6851193946095555824_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=103&oh=18e28e64ad2147ea829ce3dbc20f9139&oe=5E7C885D" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/75534189_1183689285163193_6941892795419970401_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=105&oh=471e8bc6677057746c0815538fc5e929&oe=5E816184" }
    ]
  },

  {
    title: "Help me choose my gf's bday present :)",
    description: "She loves pottery, artsy stuff. Turning 25!",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/71297879_1322593127903382_9138592489086019894_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=106&oh=0a586cfe5426466919e1f71debc58fdf&oe=5E7C6CD7" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/70365618_732707763866624_2994201536234359861_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=108&oh=73ebfd7d42536b8f11c26f95f8cc62a8&oe=5E7F23CE" }
    ]
  },

  {
    title: "Which one should I plant?",
    description: "I love happy colors and beautiful flowers",
    kind: "photo",
    category: nature,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/61543241_392842994677827_2310320228043818766_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=103&oh=d63c6fbf2c7775fa98fe6859e4652ff3&oe=5E6E07EE" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/62015864_430135367565702_1798920746969107840_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=106&oh=0fc0eba1ea05d3b83502200fff6c9009&oe=5E85A463" }
    ]
  },

  { #Sponsored Oatly
    title: "Sponsored: The Original🥛 or Chocolate?🍫",
    description: "Whats your fav?",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/69830784_134828871145607_797618568448897845_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=111&oh=296de5fa1d38e1efa34373bd7fce3c3e&oe=5E7D7388" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/33559520_181916839181679_5415296363971739648_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=103&oh=833a4cce618fa396e2926138e9bf065c&oe=5E8BC74D" }
    ]
  },

  {
    title: "Picnic outfit, what should I wear?",
    description: "I want to express my strong femininity",
    kind: "photo",
    category: fashion,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/38640851_1022643977904256_91580548270522368_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=104&se=7&oh=e5d7a59d055f1cfe83e5a5615fade32c&oe=5E736631" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/66134652_2158668277578460_2994634930833308216_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=104&oh=8335d99e0385884693eec23938ab2efa&oe=5E7357CA" }
    ]
  },

  {
    title: "My first car - which color?",
    description: "Saved enough!",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/72702451_176907463501472_7318890491510311909_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=108&se=8&oh=55333db30938597c3d84acc41b4a48e3&oe=5E6EF6F3" },
      { image: "https://scontent-frt3-1.cdninstagram.com/v/t51.2885-15/e35/66142804_117849779485820_6631155656571970062_n.jpg?_nc_ht=scontent-frt3-1.cdninstagram.com&_nc_cat=108&oh=c277d2954bcfe72e481b1ee21be814d3&oe=5E84898C" }
    ]
  },

  { #Sponsored
    title: "Sponsored: skin care - scrub or polish?",
    description: "This winter, what does your skin need?",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/74570250_573168276779254_5031146298179468413_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=1&oh=1dca0605a2300619e6330a0d37533bd2&oe=5E8B2C37" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/71831618_132417654389600_4603051465697380127_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=108&oh=0e6886baedffaec49c697eef1e48a9d1&oe=5E6A2510" }
    ]
  },

  {
    title: "Smile 🤩 or tounge out 👅",
    description: "Help me choose a post",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/69216002_197450731249438_6683297466017824487_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=110&oh=79157474206c2c375ad76a40d69acb7b&oe=5E8134A5" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/70844783_680998715701932_7084704663062504318_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=100&oh=d7b24af2201487445484a71c4128a5f6&oe=5E74C609" }
    ]
  },

  {
    title: "Ice coffee? アイスコーヒー? latte? ラテ? ",
    description: "Is it okay to drink ice coffee in winter🥶?",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/75210452_532768440902634_7073097546584771251_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=106&oh=a1efac9292d276698d86ebcabc928dc9&oe=5E7EA122" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/74526826_447584122809077_7150540111443931897_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=105&oh=ebec5965e3ab6b3925ba19ac6c519f0f&oe=5E73FEF2" }
    ]
  },

  {
    title: "Blue blouse or Camel blouse?",
    description: "Going to a job interview",
    kind: "photo",
    category: work,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/73521754_162340214867406_2704050833187190721_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=106&se=7&oh=7f8dc61fdbace8d4c774ace62a111c64&oe=5E783A7B" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/75408716_849569258774202_2336882747526475323_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=106&se=7&oh=4311b3ed424b29b258e5062e223c56ed&oe=5E71D515" }
    ]
  },

  {
    title: "Going for a nature adventure",
    description: "Which boots are warmer/comfy?",
    kind: "photo",
    category: nature,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/74911529_209963629995312_391471729264341419_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=100&oh=7f4e9b8a4e4fd5720fe3b4e65ce1514a&oe=5E67B037" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/75244346_3390073391010250_5456686446876598522_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=110&oh=a9b91d4ddd2f1519bc5872a9390bbe6c&oe=5E6A261B" }
    ]
  },

  {
    title: "Trying to order some dinner",
    description: "Local food at a local restaurant",
    kind: "photo",
    category: food,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/75272076_2475717209343149_2457055793915752330_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=105&se=7&oh=e027e01b917968b6b24b95a30af919dc&oe=5E748A02" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/71812500_433027634282836_1321102801767093384_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=104&se=7&oh=59ea6595441d396e8d4644450fc74ebb&oe=5E86A99F" }
    ]
  },

  {
    title: "Stationary advise plsss✏️",
    description: "What do you recommend?",
    kind: "photo",
    category: work,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/49319631_230346081212011_7743571837614550753_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=107&oh=26bb798409e1631fab7e9a638b774c26&oe=5E898B9E" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/75196203_162219891691021_1356655040880729931_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=101&oh=157e0353c7110af276fc4d9b5595721f&oe=5E66F1C4" }
    ]
  },

  {
    title: "Phone case, Sailor Moon? Pink tiger?",
    description: "Strong and cute, just like me",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/75239234_1791334907840117_1095811709239284619_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=105&oh=9262fd9378baae534b615c13f21c137a&oe=5E86E453" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/73281263_204272310602022_4037374697786934474_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=106&oh=92c7f033bb0d4c519d58f19497f17d7b&oe=5E684E52" }
    ]
  },

   {
    title: "Tinder profile pic 💆",
    description: "Indoors? outdoors? I want to impress the ladies",
    kind: "photo",
    category: lifestyle,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/72556387_168172840920963_7531890318550630229_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=103&se=7&oh=63917590ec6af56fa41b25b1d7b02592&oe=5E6D8348" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/73372157_400815417474022_692010181588884008_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=110&se=7&oh=bf1d6241769f2a3fa6b325ba82323e58&oe=5E677E69" }
    ]
  },

   {
    title: "Kombucha time, which flavour?",
    description: "Always hard to choose",
    kind: "photo",
    category: food,
    post_options: [
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/76920852_558782824889570_1515107878592076437_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=102&oh=d6f9132ff8fbf8ee32c7ad09cef88038&oe=5E810942" },
      { image: "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/65571959_2430429413881679_5293589272981111636_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_cat=111&oh=0d628409d71366517d14ededf6941b12&oe=5E87C254" }
    ]
  }

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
  number = rand(100..400)
  User.all.sample(number).each do |user|
    vote = post.post_options.sample.post_votes.build(user: user)
    vote.save!
  end
  # p post.categories

  #generating one comment per user
  puts "Generating comments"
  User.all.sample(number).each do |user|
    comment = Comment.new(content: Faker::TvShows::Community.quotes)
    comment.post = post
    comment.user = user
    comment.save!
  end

end
  puts "Finished creating posts, post categories and post options"
  puts "Finished creating votes"

