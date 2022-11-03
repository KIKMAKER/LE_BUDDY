require 'faker'

puts 'Clearing Database...'
Challenge.destroy_all
User.destroy_all

puts 'Creating Users...'

user1 = User.create(
  username: "serenity",
  email: "cwamono@gmail.com",
  password: 'user100',
  location: 'Paris',
  latitude: 48.856613,
  longitude: 2.352222
)

user2 = User.create(
  username: "kikmaker",
  email: "cheekylilkiki@gmail.com",
  password: 'user200',
  location: 'Cape Town',
  latitude: -33.924870,
  longitude: 18.424055
)

user3 = User.create(
  username: "special-Chris",
  email: "specialc@gmail.com",
  password: 'user300',
  location: 'Rio',
  latitude: -22.906847,
  longitude: -43.172897
)

user4 = User.create(
  username: "Stickalicious",
  email: "stricko@gmail.com",
  password: 'user400',
  location: 'Brisbane',
  latitude: -27.470030,
  longitude: 153.022980
)

user5 = User.create(
  username: "backflip-Joe",
  email: "jumpingjoe@gmail.com",
  password: 'user500',
  location: 'London',
  latitude: 51.53827300343013,
  longitude: -0.16558234717501402
)

user6 = User.create(
  username: "Liquid-G",
  email: "gabriella@gmail.com",
  password: 'user600',
  location: 'Hong Kong',
  latitude: 22.32326710206436,
  longitude: 114.17023738335119
)

user7 = User.create(
  username: "DOM-inator",
  email: "domwalsh@gmail.com",
  password: 'user700',
  location: 'Barcelona',
  latitude: 41.388229955204906,
  longitude: 2.17721937960752
)

user8 = User.create(
  username: "T-diddy",
  email: "tracys@gmail.com",
  password: 'user800',
  location: 'London',
  latitude: 39.49910781432418,
  longitude: 22.5412813192655
)

user9 = User.create(
  username: "Uncle Joe",
  email: "joedrey@gmail.com",
  password: 'user900',
  location: 'Sydney',
  latitude: -33.79031011011005,
  longitude: 151.20111218991073
)

user10 = User.create(
  username: "TheTuude",
  email: "tudoroj@gmail.com",
  password: 'user1000',
  location: 'Seol',
  latitude: 37.55996325389237,
  longitude: 126.99536480225466
)

user11 = User.create(
  username: "Herr Nico",
  email: "wiconico@gmail.com",
  password: 'user1100',
  location: 'Hamburg',
  latitude: 53.59592270766032,
  longitude: 10.013470956527115
)

user12 = User.create(
  username: "Rogue Roux",
  email: "rudeboi@gmail.com",
  password: 'user1200',
  location: 'Berlin',
  latitude: 52.535341807779815,
  longitude: 13.40822904753448
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
