require 'faker'

puts 'Clearing Database...'
Challenge.destroy_all
User.destroy_all

puts 'Creating Users...'

user1 = User.create(
  username: "serenity",
  email: "cwamono@gmail.com",
  password: 'user100',
  location: 'Paris'
)

user2 = User.create(
  username: "kikmaker",
  email: "cheekylilkiki@gmail.com",
  password: 'user200',
  location: 'Cape Town'
)

user3 = User.create(
  username: "special-Chris",
  email: "specialc@gmail.com",
  password: 'user300',
  location: 'Rio'
)

user4 = User.create(
  username: "Stickalicious",
  email: "stricko@gmail.com",
  password: 'user400',
  location: 'Brisbane'
)

user5 = User.create(
  username: "backflip-Joe",
  email: "jumpingjoe@gmail.com",
  password: 'user500',
  location: 'London'
)

user6 = User.create(
  username: "Liquid-G",
  email: "gabriella@gmail.com",
  password: 'user600',
  location: 'Hong Kong'
)

user7 = User.create(
  username: "DOM-inator",
  email: "domwalsh@gmail.com",
  password: 'user700',
  location: 'Barcelona'
)

user8 = User.create(
  username: "T-diddy",
  email: "tracys@gmail.com",
  password: 'user800',
  location: 'London'
)

user9 = User.create(
  username: "Uncle Joe",
  email: "joedrey@gmail.com",
  password: 'user900',
  location: 'Sydney'
)

user10 = User.create(
  username: "TheTuude",
  email: "tudoroj@gmail.com",
  password: 'user1000',
  location: 'Seol'
)

user11 = User.create(
  username: "Herr Nico",
  email: "wiconico@gmail.com",
  password: 'user1100',
  location: 'Hamberg'
)

user12 = User.create(
  username: "Rogue Roux",
  email: "rudeboi@gmail.com",
  password: 'user1200',
  location: 'Berlin'
)

puts 'Creating Challenges...'

10.times do
  Challenge.create(
    title: ["Ruby", "OOP", "DB", "Front", "Rails"].sample,
    description: Faker::Lorem.sentences,
    category: ["Ruby", "OOP", "DB", "Front", "Rails"].sample,
    duration: ["Challenge", "Full day", "Module"].sample,
    user_id: User.all.sample.id
  )
end
p Challenge.last

puts "Finished!"

puts "#{User.count} users created, and #{Challenge.count} challenges created"
