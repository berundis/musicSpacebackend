# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

atdi = Band.create(password: "123", email: "test@test.com", name: "At The Drive In", bio: "we make music", location: "California", genre: "post-punk", profile_img: "https://i.guim.co.uk/img/media/e55601ec5527c34dc6462d098bfa05daf699a19b/34_59_1694_1016/master/1694.jpg?w=300&q=55&auto=format&usm=12&fit=max&s=9ecc37ea7c3c8bf9edcacfec9f7fa354")
tool = Band.create(password: "jesus", email: "yeah@yeah.com", name: "Tool", bio:"yeah", location: "Denver", genre: "progressive rock", profile_img: "http://www.digitalmusicnews.com/wp-content/uploads/2018/03/7c8a239b6619403ea8120b49e9e7c73a.jpg")
