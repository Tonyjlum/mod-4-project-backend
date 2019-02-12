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

def lorem
  "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat".split(" ")

end

def chef_photos
  ["https://images.unsplash.com/photo-1543990200-991577fddc8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1834&q=80", "https://images.unsplash.com/photo-1541167113378-1f06d813887f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"].sample
end

# chef1 = Chef.create(name:"Walter White", specialty: "mexican", price: 40, rating: 5, profile_picture_url: "https://media1.s-nbcnews.com/j/streams/2012/October/121010/1C4235316-121010-ent-cranston-hmed.fit-760w.jpg",  bio: lorem.sample(40).join(" ") + "." )

# Chef.create(name:"Boyardee", specialty:"italian", price: 22, rating: 2, profile_picture_url: "https://upload.wikimedia.org/wikipedia/en/thumb/1/15/Chefboyardeepic.jpg/220px-Chefboyardeepic.jpg", bio: lorem.sample(40).join(" ") + "." )
#
# Chef.create(name:"Gordon Ramsay", specialty:"french", price: 83, rating: 4, profile_picture_url: "https://media.brstatic.com/2017/04/24173442/gordan-ramsay-chef-cooks-ribs-mst.jpg", bio: lorem.sample(40).join(" ") + "." )
#
# Chef.create(name:"Guy Fieri", specialty:"american", price: 38, rating: 3, profile_picture_url: "https://cbsnews1.cbsistatic.com/hub/i/2018/07/30/e80c8820-a3d7-4c84-8b22-fb05d1a5b914/gettyimages-482774787.jpg", bio: lorem.sample(40).join(" ") + "." )
#
# Chef.create(name:"Wolfgang Puck", specialty:"french", price: 77, rating: 5, profile_picture_url: "https://www.edhat.com/sites/default/files/news_image/wolfgangpuck2018.jpg", bio: lorem.sample(40).join(" ") + "." )
#
# Chef.create(name:"Auguste Gusteau", specialty:"french", price: 45, rating: 4, profile_picture_url: "https://vignette.wikia.nocookie.net/poohadventures/images/6/60/Auguste_Gusteau.jpg", bio: lorem.sample(40).join(" ") + "." )
#
# Chef.create(name:"Bob Belcher", specialty:"american", price: 13, rating: 3, profile_picture_url: "https://vignette.wikia.nocookie.net/bobsburgerpedia/images/2/21/209_14_07-0052.jpg", bio: lorem.sample(40).join(" ") + "." )
#
# Chef.create(name:"Rachael Ray", specialty:"mexican", price:25, rating: 3, profile_picture_url: "https://arbusb.com/wp-content/uploads/2017/07/inspiring-Rachael-Ray-Kitchen-Accessories-walmart-black-friday-rachael-ray-cookware-Rachael-Ray-cooking-show.jpg", bio: lorem.sample(40).join(" ") + "." )
#
# Chef.create(name: "Paula Deen", specialty: "american", price: 32, rating: 2, profile_picture_url: "http://blogs.uoregon.edu/j350pauladeen/files/2013/12/PD2-pdrnoz.jpg", bio: lorem.sample(40).join(" ") + "." )
#
# Chef.create(name: "Action Bronson", specialty: "other", price: 26, rating: 5, profile_picture_url: "https://img1.mashed.com/img/gallery/the-untold-truth-of-action-bronson/hell-eat-almost-anything-1506387015.jpg", bio: lorem.sample(40).join(" ") + "." )
#
#
# Chef.create(name: "Bruno Albouze", specialty: "other", price: 77, rating: 4, profile_picture_url: "https://d3ciwvs59ifrt8.cloudfront.net/7258edbb-fe65-489f-8cf4-f062769bdb54/7f7236f8-a894-4a10-a36d-6f1012eb4feb.jpg", bio: lorem.sample(40).join(" ") + "." )

User.create(name: "Flatiron School", location: "11 Broadway 2nd Floor, New York, NY 10004", rating: 5)

20.times do
  User.create(name: Faker::FunnyName.two_word_name, location: Faker::Address.full_address)
end


Chef.create(name: "John Martinez", specialty: "japanese", price: 80, profile_picture_url: "https://slack-imgs.com/?c=1&url=https%3A%2F%2Fi.imgur.com%2F4ehO5e4.jpg", bio: lorem.sample(40).join(" ") + "." )
chef1 = Chef.create(name: "Charlie Russo", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/8BhBCWC/Chummm.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Adam Saland", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/f9fJWJH/AS.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Chris Benedict", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/VwjPhF5/CB.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Chris Metzger", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/47rHbtt/CM.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Damon Collins", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/CWRWgZ2/DC.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Dan Hamilton", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/WxMQsnJ/DH.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Dick Ward", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/bHBSJ3g/DW.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Evans Wang", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/whJ3HDw/EW.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Isaac Oseas", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/fxYfQBq/IO.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Joyce Kwon", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/S3mP4n9/JK.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Joshua Cocciardi", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/JKSKrQS/JM.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Mahmoud Agamy", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/MVnW89K/MA.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Matthew Doering", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/HXm1pgs/MD.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Michael Muniz", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/Xsh0jth/MM.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Rachel Lum", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/1QFJ0Zm/RL.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Simon Lee", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/wMrntFH/SL.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Satya Sinha", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/k4xMmnK/SS.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: "Thao Pham", specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/4WXHFf5/TP.jpg", bio: lorem.sample(40).join(" ") + ".")

# stock pics chefs
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/nBP1pWt/SP-1.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/sH5MzJg/SP-2.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/jR35W7x/SP-3.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/mFsRKkS/SP-4.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/0qmykfY/SP-5.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/C0h90v5/SP-6.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/WvxdQVG/SP-7.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/KKWpYnk/SP-8.jpg", bio: lorem.sample(40).join(" ") + ".")
Chef.create(name: Faker::FunnyName.two_word_name, specialty: food_speciality, price: (10..99).to_a.sample, profile_picture_url: "https://i.ibb.co/Y81mTr1/SP-9.jpg", bio: lorem.sample(40).join(" ") + ".")




#static appointment for user 1, Flatiron
Appointment.create(user_id: 1, chef_id: 1, guest_count: 3, cost: chef1.price * 3, note: "first one yaayy!", datetime: Time.now)
10.times do
  chef = Chef.all.sample
  guest_count = (1..6).to_a.sample
  Appointment.create(user_id: 1, chef_id: chef.id, guest_count: guest_count, cost: guest_count * chef.price, datetime: Faker::Time.forward(31), note: lorem.sample((10..20).to_a.sample).join(" ") + ".")
end

200.times do
  chef = Chef.all.sample
  guest_count = (1..6).to_a.sample
  Appointment.create(user_id: User.all.sample.id, chef_id: chef.id, guest_count: guest_count, cost: guest_count * chef.price, datetime: Faker::Date.backward(14), note: lorem.sample((10..20).to_a.sample).join(" ") + ".")

end

200.times { |index|
  current = Appointment.find(index+1)
  rating = (1..5).to_a.sample
  current.update(chef_rating: rating, review: lorem.sample((10..25).to_a.sample).join(" ") + "." )
  current_chef = Chef.find(current.chef_id)
  count = current_chef.appointments.select{|a| a.chef_rating > 0 }.count
  new_rating = current_chef.appointments.map{ |a| a.chef_rating}.reduce(:+).to_f / count.to_f
  current_chef.update(rating: new_rating.round(1))
}


300.times do
  chef = Chef.all.sample
  guest_count = (1..6).to_a.sample
  Appointment.create(user_id: User.all.sample.id, chef_id: chef.id, guest_count: guest_count, cost: guest_count * chef.price, datetime: Faker::Time.forward(31), note: lorem.sample((10..20).to_a.sample).join(" ") + ".")
end






puts "Finish Seeding Chefs"
