# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Chef.create(name:"Walter White", specialty: "mexican", price: 40, rating: 5, profile_picture_url:"https://media1.s-nbcnews.com/j/streams/2012/October/121010/1C4235316-121010-ent-cranston-hmed.fit-760w.jpg")

Chef.create(name:"Boyardee", specialty:"italian", price: 22, rating: 2, profile_picture_url:"https://upload.wikimedia.org/wikipedia/en/thumb/1/15/Chefboyardeepic.jpg/220px-Chefboyardeepic.jpg")

Chef.create(name:"Gordon Ramsay", specialty:"french", price: 83, rating: 4, profile_picture_url:"https://media.brstatic.com/2017/04/24173442/gordan-ramsay-chef-cooks-ribs-mst.jpg")
