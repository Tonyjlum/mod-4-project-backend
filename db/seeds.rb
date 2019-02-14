# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def food_speciality
  ["italian", "french", "latin-american", "indian", "american", "mediterranean", "mexican", "japanese", "chinese", "korean", "spanish", "vegetarian", "vietnamese", "other"].sample
end

def review_hash
  reviewhsh = { 1 =>  ["1 star", "I found an eyelash that definitely wasn't mine in my food", "I threw up in my mouth a little when they brought me my food", "I was served dog food on a plate, but I wouldn't even feed it to my dog", "My water glass was stained with lipstick and had bits of food floating in it", "Never again", "Seriously, how difficult is it to get a clean glass around here? I gave 1 star because I couldn't give 0", "The dead flies on the window sill indicated to me that they don't do a good job cleaning and the flies found the food to be toxic", "The burger was so undercooked it started eating the lettuce", "The steak was so undercooked it started eating the salad"], 2 => ["I gave this chef two stars because I was feeling extra generous", "I was not very pleased to find out that the coffee wasn't fair trade", "Seriously, how difficult is it to get a clean glass around here? I heard a rumor that the vegetarian dishes are prepared alongside the meat", "The menu didn't match the one on their website", "The tofu dish tasted spongy and a bit bland", "This chef was just ok", "This chef was nearby and I decided to check it out", "When I walked in, I really wasn't expecting much"], 3 => ["3 stars", "I felt the prices were too high given the quality of the food", "I was not very pleased to find out that the coffee wasn't local", "Overall, this chef is just okay", "Overall, this chef is just so-so", "Overhyped", "The ambiance gives off an earthy feel-good vibe", "The menu didn't match the one on their website", "The photos of the food were appetizing and palpable, but didn't live up to the hype", "The service was good for the most part but the waiter was a bit rude", "I have been here several times before"], 4 => ["4 stars of quality", "I found the ambiance to be very charming", "I found the entrees to be very agreeable to my personal flavor-profile", "I was happy to see how clean everything was", "I was pleasantly surprised", "It failed to meet the 5-star experience because the hostess touched the rim of my wine glass", "It was much better than I expected", "Satisfactory experience, will come again", "Solid 4 stars", "The ambiance gives off an earthy feel-good vibe", "The entrees are simply to die for", "The food is simply to die for", "The service was good for the most part but the waitress was a bit unprofessional", "The waiter did an excellent job", "Try out the huge selection of incredible appetizers"], 5=> ["After my meal, I was knocked into a food coma", "Best experience ever!", "Everything was simply decadent", "I found the ambiance to be very charming", "I'd give more than 5 stars if I could!", "Overall experience: 5 stars", "The appetizers must be sprinkled with crack because I just craved for more and more", "The desserts must be sprinkled with crack because I just craved for more and more", "The food was cooked to perfection", "Yummers! The waitress was prompt and polite"]}
end


def lorem
["Subtly charming food enthusiast", " Zombie specialist", " Friend of animals everywhere", " Hipster-friendly social media nerd", "Twitter buff", " Amateur organizer", " Analyst", " Tv scholar", " Extreme social media nerd", " Incurable musicaholic", " Alcohol geek", "Incurable reader", " Pop culture specialist", " Professional food fanatic", " Musicaholic", " Passionate problem solver", " Freelance web enthusiast", "Student", " Writer", " Freelance music lover", " Wannabe pop culture nerd", " Creator", "Subtly charming bacon junkie", " Infuriatingly humble beer trailblazer", " Introvert", " Evil reader", " Hipster-friendly creator", "Award-winning zombie specialist", " General twitter advocate", " Problem solver", " Pop culture enthusiast", " Proud food evangelist", " Coffee junkie", "Infuriatingly humble entrepreneur", " Social media evangelist", " Lifelong food ninja", " Hardcore web fan", " Wannabe writer", "Amateur zombie geek", " Beer buff", " General food expert", " Alcohol fanatic", "Evil pop culture fanatic", " Freelance problem solver", " Twitter lover", " Friendly web guru", "Incurable coffee junkie", " Thinker", " Zombieaholic", " Pop culture aficionado", " Avid food fan", "Unapologetic coffee scholar", " Beer geek", " Extreme tv guru", " Hardcore travel practitioner", " Pop cultureaholic", "Writer", " Tv ninja", " Amateur student", " Coffee enthusiast", " Lifelong bacon geek", " Devoted webaholic", "Web trailblazer", " Bacon junkie", " Wannabe problem solver", " Pop culture fan", "Bacon junkie", " Beer aficionado", " Student", " Total social media specialist", " Award-winning web buff", "Music trailblazer", " Extreme bacon nerd", " Social media geek", " Incurable twitter guru"].sample(5).join(",") + "."
end

User.create(name: "Flatiron School", location: "11 Broadway 2nd Floor, New York, NY 10004", rating: 5)

20.times do
  User.create(name: Faker::FunnyName.two_word_name, location: Faker::Address.full_address)
end


Chef.create(name: "John Martinez", specialty: "japanese", price: 87, profile_picture_url: "https://slack-imgs.com/?c=1&url=https%3A%2F%2Fi.imgur.com%2F4ehO5e4.jpg", bio: lorem  )
chef1 = Chef.create(name: "Charlie Russo", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/8BhBCWC/Chummm.jpg", bio: lorem )
Chef.create(name: "Adam Saland", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/f9fJWJH/AS.jpg", bio: lorem )
Chef.create(name: "Chris Benedict", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/VwjPhF5/CB.jpg", bio: lorem )
Chef.create(name: "Chris Metzger", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/47rHbtt/CM.jpg", bio: lorem )
Chef.create(name: "Damon Collins", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/CWRWgZ2/DC.jpg", bio: lorem )
Chef.create(name: "Dan Hamilton", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/WxMQsnJ/DH.jpg", bio: lorem )
Chef.create(name: "Dick Ward", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/bHBSJ3g/DW.jpg", bio: lorem )
Chef.create(name: "Evans Wang", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/whJ3HDw/EW.jpg", bio: lorem )
Chef.create(name: "Isaac Oseas", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/fxYfQBq/IO.jpg", bio: lorem )
Chef.create(name: "Joyce Kwon", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/S3mP4n9/JK.jpg", bio: lorem )
Chef.create(name: "Joshua Cocciardi", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/JKSKrQS/JM.jpg", bio: lorem )
Chef.create(name: "Mahmoud Agamy", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/MVnW89K/MA.jpg", bio: lorem )
Chef.create(name: "Matthew Doering", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/HXm1pgs/MD.jpg", bio: lorem )
Chef.create(name: "Michael Muniz", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/Xsh0jth/MM.jpg", bio: lorem )
Chef.create(name: "Rachel Lum", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/1QFJ0Zm/RL.jpg", bio: lorem )
Chef.create(name: "Simon Lee", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/wMrntFH/SL.jpg", bio: lorem )
Chef.create(name: "Satya Sinha", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/k4xMmnK/SS.jpg", bio: lorem )
Chef.create(name: "Thao Pham", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/4WXHFf5/TP.jpg", bio: lorem )
Chef.create(name: "Tony Lum", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/QYY3BC4/TL.jpg", bio: lorem )
Chef.create(name: "Adam Giegel", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/CMZY6NL/AG.jpg", bio: lorem )
Chef.create(name: "Brandon Collins", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/FWxp71g/BC.jpg", bio: lorem )
Chef.create(name: "Demian Sims", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/d6WmGbq/DS.jpg", bio: lorem )
Chef.create(name: "Emily asch", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/jRcDnYY/EA.jpg", bio: lorem )
Chef.create(name: "Esther Kim", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/NLdxDf9/EK.jpg", bio: lorem )
Chef.create(name: "Meghan Campbell", specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/x65QNS9/MC.jpg", bio: lorem )

# stock pics chefs
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/nBP1pWt/SP-1.jpg", bio: lorem )
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/sH5MzJg/SP-2.jpg", bio: lorem )
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/jR35W7x/SP-3.jpg", bio: lorem )
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/mFsRKkS/SP-4.jpg", bio: lorem )
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/0qmykfY/SP-5.jpg", bio: lorem )
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/C0h90v5/SP-6.jpg", bio: lorem )
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/WvxdQVG/SP-7.jpg", bio: lorem )
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/KKWpYnk/SP-8.jpg", bio: lorem )
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (40..99).to_a.sample, profile_picture_url: "https://i.ibb.co/Y81mTr1/SP-9.jpg", bio: lorem )




#static appointment for user 1, Flatiron
Appointment.create(user_id: 1, chef_id: 1, guest_count: 3, cost: chef1.price * 3, note: "first one yaayy!", datetime: Time.now)
10.times do
  chef = Chef.all.sample
  guest_count = (1..6).to_a.sample
  Appointment.create(user_id: 1, chef_id: chef.id, guest_count: guest_count, cost: guest_count * chef.price, datetime: Faker::Time.forward(31), note: lorem)
end

75.times do
  chef = Chef.all.sample
  guest_count = (1..6).to_a.sample
  Appointment.create(user_id: User.all.sample.id, chef_id: chef.id, guest_count: guest_count, cost: guest_count * chef.price, datetime: Faker::Date.backward(14), note: lorem)

end

85.times { |index|
  current = Appointment.find(index+1)
  rating = (2..5).to_a.sample

  current.update(chef_rating: rating, review: review_hash[rating].sample(3).join(". "))
  current_chef = Chef.find(current.chef_id)
  count = current_chef.appointments.select{|a| a.chef_rating > 0 }.count
  new_rating = current_chef.appointments.map{ |a| a.chef_rating}.reduce(:+).to_f / count.to_f
  current_chef.update(rating: new_rating.round(1))
}


75.times do
  chef = Chef.all.sample
  guest_count = (1..6).to_a.sample
  Appointment.create(user_id: User.all.sample.id, chef_id: chef.id, guest_count: guest_count, cost: guest_count * chef.price, datetime: Faker::Time.forward(31), note: lorem)
end






puts "Finish Seeding Chefs"
