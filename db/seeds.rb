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
  bio: "I have worked as a fashion and commercial model, and movement instructor.
        My love for technology, the internet, creating blogs and interest in SEO led me to want to learn how to code and more.
        I plan on starting a tech company in the future.",
  github: "carolyne_web"
)

user2 = User.create(
  username: "kikmaker",
  email: "cheekylilkiki@gmail.com",
  password: 'user200',
  location: 'Cape Town',
  bio: "I'm Kiki, I'm on to about my third career path now so writing a bio is kind of tricky.
        My background is environment and climate change but I've worked as a project manager, a copy editor and a proofreader.
        I love to get stuck into a project or a puzzle and finding out a more efficient way to do something makes me weak at the knees.",
  github: "kikmaker"
)

user3 = User.create(
  username: "special-Chris",
  email: "specialc@gmail.com",
  password: 'user300',
  location: 'Rio',
  bio: "Loafing around...",
  github: "ch0rizo"
)

user4 = User.create(
  username: "Stickalicious",
  email: "stricko@gmail.com",
  password: 'user400',
  location: 'Brisbane',
  bio: "I'm a graphic designer and artist with a background in politics, events management and marketing,
        looking to move into web design and development. After Le Wagon, I'm open to any cool opportunities out there in the world :)",
  github: "str1ck0"
)

user5 = User.create(
  username: "backflip-Joe",
  email: "jumpingjoe@gmail.com",
  password: 'user500',
  location: 'London',
  bio: "So I was previously working as a bricklayer for the past 13 years and started taking an interest in computers
        when covid hit and we were all locked away. I started looking into designing websites and joined a codecademy course
        but after finishing that i felt like i needed to take my learning to the next level so i started looking into
        more intensive coding courses then i came across La Wagon and it just seemed like the perfect fit!",
  github: "JowensM"
)

user6 = User.create(
  username: "Liquid-G",
  email: "gabriella@gmail.com",
  password: 'user600',
  location: 'Hong Kong',
  bio: "Photographer and buyer. Wanting to learn web development to create cool websites for aspiring business ideas.",
  github: "gabirein"
)

user7 = User.create(
  username: "DOM-inator",
  email: "domwalsh@gmail.com",
  password: 'user700',
  location: 'Barcelona',
  bio: " Hey, i'm Dom! I'm 28 years old, from Cape Town, but have been living in Barcelona the last 3 years.
         Health fanatic, nature lover, armchair philosopher probably best describe me as a human.
         My background is in holistic health, but this course marks the start of a new chapter! Incredibly stoked to dive into the field of web development, learn new skills, and hopefully form some great friendships in the process.",
  github: "dommywalsh"
)

user8 = User.create(
  username: "T-dog",
  email: "tracys@gmail.com",
  password: 'user800',
  location: 'London',
  bio: "Passionate about facilitating the creative process and connecting people to the skills, knowledge and services that they want or need.
        Offering a wide variety of creative and innovative expertise in various industries including education, technology, science, art and more.",
  github: "tracysik"
)

user9 = User.create(
  username: "Uncle Joe",
  email: "joedrey@gmail.com",
  password: 'user900',
  location: 'Sydney',
  bio: "Hello! I am South African, born in Cape Town.
       Been living in Australia (Sydney) for the past 5 years, owned my own removals company. Was an incredible experience however I am now looking to upskill myself and dive into the programming world as I feel it is an important aspect of commerce and business in general. Excited for the course!",
  github: "JOEDREYER"
)

user10 = User.create(
  username: "TheTuude",
  email: "tudoroj@gmail.com",
  password: 'user1000',
  location: 'Seol',
  bio: "What's up everyone, I'm Tudor! I'm a Romanian Dutch national with a BSc in business administration and hospitality management.
        I've worked in four countries, embarked on entrepreneurial endeavors like co-founding a tattoo & barber concept shop in Holland and a high-end European food import business in Zimbabwe.
        I'm always up for some traveling, adventure and meeting open minded folks.",
  github: "tudor887"
)

user11 = User.create(
  username: "Herr Nico",
  email: "wiconico@gmail.com",
  password: 'user1100',
  location: 'Hamberg',
  bio: "Just finished school in Hamburg, Germany. Now about to join Le Wagon, for the Web-Development course in Cape Town.
        After the course i'm starting to study in London and planning on working in an Web-Development company (part Time).",
  github: "nicowkm"
)

user12 = User.create(
  username: "Rouge Roux",
  email: "rudeboi@gmail.com",
  password: 'user1200',
  location: 'Berlin',
  bio: "Automate everything. Love the problem, not the solution. Evidence is providence. Avoid doing harm. Carbon-neutral growth is essential.
        I want to expand my technical know-how and have oversight of the development teams that I manage.",
  github: "ticklemeexcited"
)

puts 'Creating Challenges...'


challenge1 = Challenge.create(
  title: "Ruby",
  description: "The infamous Stupid Coaching challenge! Keen to buddy up in this one.",
  duration: "Challenge",
  user_id: User.all.sample.id
)

challenge2 = Challenge.create(
  title: "Ruby",
  description: "I think 'Flow, Conditionals & Arrays' is one of the most NB days in the Ruby module.
   Looking for a buddy to work through these with me.",
  duration: "Full day",
  user_id: User.all.sample.id
)

challenge3 = Challenge.create(
  title: "Ruby",
  description: "Looking to build a strong foundation in Ruby. Let's go through all Ruby challenges together.",
  duration: "Module",
  user_id: User.all.sample.id
)

challenge4 = Challenge.create(
  title: "OOP",
  description: "Let's go through all the OOP challenges together- the 'Cookbooks', 'Food Deliveries' et al.",
  duration: "Module",
  user_id: User.all.sample.id
)

challenge5 = Challenge.create(
  title: "OOP",
  description: "Still a bit shaky with 'Classes & Instances'- Anyone want to do these with me?",
  duration: "Full day",
  user_id: User.all.sample.id
)

challenge6 = Challenge.create(
  title: "DB",
  description: "'SQL Queries' - Let's do go!",
  duration: "Challenge",
  user_id: User.all.sample.id
)

challenge7 = Challenge.create(
  title: "DB",
  description: "Anyone else fall asleep during the entire DB module?",
  duration: "Module",
  user_id: User.all.sample.id
)

challenge8 = Challenge.create(
  title: "DB",
  description: "Lets 'CRUDE with SQL!",
  duration: "Full day",
  user_id: User.all.sample.id
)

challenge9 = Challenge.create(
  title: "Front",
  description: "Who wants to major in Front End?",
  duration: "Module",
  user_id: User.all.sample.id
)

challenge10 = Challenge.create(
  title: "Front",
  description: "I'm strong in Javascript, so would love a buddy who is weak so I can practice my teaching while getting
  through these 'Javascript basics' challenges.",
  duration: "Full day",
  user_id: User.all.sample.id
)

challenge11 = Challenge.create(
  title: "Rails",
  description: "Ajax in Rails anyone?",
  duration: "Challenge",
  user_id: User.all.sample.id
)

challenge12 = Challenge.create(
  title: "Rails",
  description: "Loving Rails but really need an accountability partner to make sure I get through all these challenges!",
  duration: "Module",
  user_id: User.all.sample.id
)

p Challenge.last

puts "Finished!"

puts "#{User.count} users created, and #{Challenge.count} challenges created"
