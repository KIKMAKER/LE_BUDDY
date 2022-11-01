require 'faker'

puts 'Clearing Database...'
User.destroy_all
Challenge.destroy_all

puts 'Creating Users...'

user1 = User.create(
  name: "serenity",
  email: "cwamono@gmail.com",
  encrypted_password: 'user100'
)

# user2 = User.create(
#   name: "kikmaker",
#   email: "cheekylilkiki@gmail.com",
#   encrypted_password: 'user2'
# )

# user3 = User.create(
#   name: "special-Chris",
#   email: "specialc@gmail.com",
#   encrypted_password: 'user3'
# )

# user4 = User.create(
#   name: "Stickalicious",
#   email: "stricko@gmail.com",
#   encrypted_password: 'user4'
# )

# user5 = User.create(
#   name: "backflip-Joe",
#   email: "jumpingjoe@gmail.com",
#   encrypted_password: 'user5'
# )

# user6 = User.create(
#   name: "Liquid-G",
#   email: "gabriella@gmail.com",
#   encrypted_password: 'user6'
# )

# user7 = User.create(
#   name: "DOM-inator",
#   email: "domwalsh@gmail.com",
#   encrypted_password: 'user7'
# )

# user8 = User.create(
#   name: "T-diddy",
#   email: "tracys@gmail.com",
#   encrypted_password: 'user8'
# )

# user9 = User.create(
#   name: "Uncle Joe",
#   email: "joedrey@gmail.com",
#   encrypted_password: 'user9'
# )

# user10 = User.create(
#   name: "TheTuude",
#   email: "tudoroj@gmail.com",
#   encrypted_password: 'user10'
# )

# user11 = User.create(
#   name: "Herr Nico",
#   email: "wiconico@gmail.com",
#   encrypted_password: 'user11'
# )

# user12 = User.create(
#   name: "Rogue Roux",
#   email: "rudeboi@gmail.com",
#   encrypted_password: 'user12'
# )

# puts 'Creating Challenges...'

p user1
10.times do
  Challenge.create(
    title: Faker::Company.catch_phrase,
    description: Faker::Lorem.sentences,
    category: ["Ruby", "OOP", "DB", "Front", "Rails"].sample,
    duration: ["Challenge", "Full day", "Module"].sample,
    user_id: User.all.sample
  )
end
p Challenge.last

puts "Finished!"

puts "#{User.count} users created, and #{Challenge.count} challenges created"
