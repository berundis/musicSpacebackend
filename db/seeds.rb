# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

atdi = Band.create(profile_type: "band", password: "123", email: "test@test.com", name: "At The Drive In", bio: "we make music", location: "California", genre: "post-punk", profile_img: "https://i.guim.co.uk/img/media/e55601ec5527c34dc6462d098bfa05daf699a19b/34_59_1694_1016/master/1694.jpg?w=300&q=55&auto=format&usm=12&fit=max&s=9ecc37ea7c3c8bf9edcacfec9f7fa354")
tool = Band.create(profile_type: "band", password: "jesus", email: "yeah@yeah.com", name: "Tool", bio: "yeah", location: "Denver", genre: "progressive rock", profile_img: "http://www.digitalmusicnews.com/wp-content/uploads/2018/03/7c8a239b6619403ea8120b49e9e7c73a.jpg")

local = Venue.create(profile_type: "venue", password: "local", email: "local@gmail.com", name: "Local", description: "dirty", genres: "punk, rock", profile_img:"https://s3-media3.fl.yelpcdn.com/bphoto/DxHolPdLR3R0jDj6Nhtmyg/ls.jpg", location: "Santurce")
club77 = Venue.create(profile_type: "venue", password: "club", email: "club77@gmail.com", name: "Club 77", description: "punk", genres:"all", profile_img: "https://i.ytimg.com/vi/6jFPIH6-Zg4/maxresdefault.jpg", location: "Rio Piedras")

show1 = Show.create(name: "Show1", flyer: "https://images.sk-static.com/images/media/img/col3/20120718-141103-846746.jpg", venue_id:1)
show1.bands << atdi
show1.bands << tool
