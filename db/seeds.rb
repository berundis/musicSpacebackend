require 'faker'

venue_images = [
  "https://cdn.liquor.com/wp-content/uploads/2017/07/06081257/The-11-Best-New-Bars-in-Washington-DC-Summer-2017-addendum-720x480-inline.jpg",
  "https://cdn.ticketfly.com/wp-content/themes/dougfirlounge/images/bg-venue-new.jpg",
  "https://static.designmynight.com/uploads/2014/03/Barrio-East-optimised.jpg",
  "https://cdn.vox-cdn.com/thumbor/q3GYciGKI4HhIaRIluoplQrEQiw=/105x0:1438x1000/1200x900/filters:focal(105x0:1438x1000)/cdn.vox-cdn.com/uploads/chorus_image/image/58944993/-3.0.0.jpg",
  "https://res.cloudinary.com/thedailymeal/image/upload/s--JrUf6Rwa--/c_fill,f_auto,fl_lossy,g_face,h_516,q_auto,w_774/v1/live/2017/10/30/Hero_Dive%20bar%20in%20each%20state_Edit_0_0_0.jpg",
  "https://vignette.wikia.nocookie.net/mafiagame/images/1/1b/Deep_Dive_Bar_%26_Lounge.jpg/revision/latest?cb=20170325200439",
  "http://static.asiawebdirect.com/m/phuket/portals/www-singapore-com/homepage/top10/top5-live-music-bars/pagePropertiesImage/top5-live-music-bars-singapore.jpg",
  "https://media.timeout.com/images/100902067/image.jpg",
  "https://craftbars.co.uk/wp-content/uploads/2018/03/StallBarEventwithBackBarsDecShoot-6740.jpg",
  "https://pixel.nymag.com/imgs/daily/grub/2016/best-of-new-york/best-live-music-bar-skinny-dennis.w1200.h630.jpg",
  "https://www.mundoformativo.com/files/2017/07/pub-and-music.jpg",
  "https://a2.cdn.japantravel.com/photo/5909-40188/800/okinawa-sports-and-music-bar-sideways-40188.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/06/73/f3/fe/sticky-mike-s-frog-bar.jpg",
  "http://files.clubplanet.com/sitefiles/ArticleImages/2253/mars_2.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/06/71/5e/8c/alcatraz.jpg"
]

band_images = [
  "http://d2752rta4dscqv.cloudfront.net/ImageCache/save_the_clock_tower_H_0614.368df4fe9e9f0d0e95b84e77b09163ac.jpg",
  "http://www.noecho.net/uploads/wysiwyg/hardcore-bands-2016.jpg",
  "http://nyc.thedelimagazine.com/sites/upload-files/nyc_outskirts.jpg",
  "http://www.progarchives.com/progressive_rock_discography_band/10364.jpg",
  "https://upload-assets.vice.com/files/2016/09/08/1473375782cararobbins_warpaint_3.jpg",
  "https://s3-us-west-1.amazonaws.com/sg101.user.photos/N5KuqG6XR1q00ZdPw7XEtg.jpg",
  "http://3.bp.blogspot.com/-s8K0JHiz2Sg/VFGS14Yj8bI/AAAAAAAAAjw/KNcA_5pOkTY/s1600/7225088330_8dd251fd83_z.jpg",
  "http://www.btrtoday.com/wp-content/uploads/surf-curse-green-room.jpg",
  "https://static.highsnobiety.com/wp-content/uploads/2016/09/21135052/asian-trap-keith-ape.jpg",
  "https://i.pinimg.com/originals/ab/19/63/ab196313eaf1f381f765c55298fbb914.jpg",
  "https://media.sandiegoreader.com/img/photos/2014/03/18/CRAWLER_3-20_INLINE_boogarins_t670.jpg?b3f6a5d7692ccc373d56e40cf708e3fa67d9af9d",
  "http://www.brooklynvegan.com/files/img/bp/laurels.jpg",
  "https://bandcampblog.files.wordpress.com/2017/08/latin-psych-600.jpg?w=350&h=200&crop=1",
  "https://alarm-magazine.com/wp-content/uploads/2010/11/sonny_kay2.jpg",
  "http://conversationswithbianca.com/wp-content/uploads/2012/01/The-Gift-Giver-by-Sonny-Kay.jpg"
]

show_images = [
  "https://theplaylist.net/wp-content/uploads/2016/05/LosChidos_kiosk-edit.jpg",
  "https://f4.bcbits.com/img/a3193296401_10.jpg",
  "https://f4.bcbits.com/img/a1113480625_10.jpg",
  "https://i.ytimg.com/vi/HBVoG5q1n58/maxresdefault.jpg",
  "https://images-na.ssl-images-amazon.com/images/I/81wwM9w6ACL._SY355_.jpg",
  "https://media.pitchfork.com/photos/5929a3079d034d5c69bf2d22/1:1/w_320/78d69041.gif",
  "https://www.residentadvisor.net/images/events/flyer/2014/2/de-0221-568438-0-front.jpg",
  "https://1v98is2jb24z318cse1nw6t2-wpengine.netdna-ssl.com/wp-content/uploads/2017/04/chon-admat-2017-300x400.jpg",
  "https://i.pinimg.com/236x/d7/6e/6c/d76e6c4577f2314300b2ce052d554792--rock-posters-art-posters.jpg",
  "https://i.pinimg.com/236x/a2/5f/da/a25fdabbdad1c5d9ed26194d1a10c7a4--poster-rock-poster-art.jpg",
  "https://i.pinimg.com/736x/00/b3/2a/00b32afc32987cc1542c89ef29dc2eb9--art-posters-poster-art.jpg",
  "https://cache.20minutes.fr/photos/2013/02/07/melvins-729d-diaporama.jpg",
  "http://i.imgur.com/qApaYh5.jpg",
  "https://pre00.deviantart.net/38c1/th/pre/i/2014/344/c/9/paint_war_party_flyer_by_1337tspeak-d89ehvf.jpg",
  "https://images.sk-static.com/images/media/img/col3/20111108-015207-867164.jpg",
  "https://i.pinimg.com/originals/03/c5/eb/03c5eb612ccf978fa1d8cdf5726ec91b.jpg",
  "http://i562.photobucket.com/albums/ss62/jpoplovernet/e28f32d92fe5713-1.jpg",
  "https://i.pinimg.com/736x/4d/70/5f/4d705fc87d9444f083c421623f31cc1d--circa-survive-flyers.jpg",
  "https://s-media-cache-ak0.pinimg.com/originals/f9/a7/e7/f9a7e757bc8b2fba64bb1969c2806879.jpg",
  "http://www.vegas24seven.com/wp-content/uploads/2013/06/coheedcambria1.jpg",
  "https://2.bp.blogspot.com/-pz_bRa5dIvo/VWDnJXm1KXI/AAAAAAAABxw/5fUgT1aCurE/s640/Circa_survive_Rx_Bandits.jpg",
  "https://www.officialmerchandise.com/assets/products/61050/large/the-mars-volta-evil-sacrifice-sticker-s4345.jpg",
  "https://i.pinimg.com/236x/b2/f7/e2/b2f7e2a54f3a57493ed511eeb213af44--london--the-mars-volta.jpg",
  "https://i.pinimg.com/736x/fb/91/c5/fb91c54ea3002a9be6f670e22e88ee59--tool-poster-poster-art.jpg",
  "https://assets.bigcartel.com/product_images/205099571/kinggizzard.jpg?auto=format&fit=max&h=1000&w=1000",
  "https://i.pinimg.com/736x/d6/34/b9/d634b9b1862ca99c6e2a8ac7eba1cf39--august--netherlands.jpg",
  "http://s3images.coroflot.com/user_files/individual_files/large_653280_idqvesyaqvhaoz5zmcjdqbfyx.jpg",
  "http://www.john-wiese.com/zine/wp-content/uploads/2012/10/53-ksp-july-3-1994-flyer-791x1024.jpg",
  "https://pbs.twimg.com/media/A6tomYKCUAE4skh.jpg",
  "http://stefanfaehler.com/wp-content/uploads/2015/01/Gegen_Fetish_web.jpg"
]

atdi = Band.create(profile_type: "band", password: "123", email: "test@test.com", name: "At The Drive In", bio: "Alfaro Vive, Carajo!", state: "Texas", city: "El Paso", genre: "post punk", profile_img: "https://i.guim.co.uk/img/media/e55601ec5527c34dc6462d098bfa05daf699a19b/34_59_1694_1016/master/1694.jpg?w=300&q=55&auto=format&usm=12&fit=max&s=9ecc37ea7c3c8bf9edcacfec9f7fa354")
tool = Band.create(profile_type: "band", password: "jesus", email: "yeah@yeah.com", name: "Tool", bio: "Let them swim", state: "California", city: "Los Angeles", genre: "progressive rock", profile_img: "http://www.digitalmusicnews.com/wp-content/uploads/2018/03/7c8a239b6619403ea8120b49e9e7c73a.jpg")
dgd = Band.create(profile_type: "band", password: "dgd", email: "dgd@gmail.com", name: "Dance Gavin Dance", bio:"We scream", state: "California", city:"Sacramento", genre: "post hardcore", profile_img: "https://ih0.redbubble.net/image.285350541.6130/flat,750x1000,075,t.jpg")
hella = Band.create(profile_type: "band", password: "hella", email: "hella@gmail.com", name: "Hella", bio: "There is no 666 in Outer Space", state: "California", city: "Sacramento", genre: "math rock", profile_img: "https://f4.bcbits.com/img/a2970431076_2.jpg")
dgrips = Band.create(profile_type: "band", password: "deathgrips", email: "deathgrips@gmail.com", name: "Death Grips", bio: "No Love Deep Web", state: "California", city: "Sacramento", genre: "experimental hip hop", profile_img: "http://www.thegryphon.co.uk/wp-content/uploads/2016/11/death-grips-3.jpg")
teramelos = Band.create(profile_type: "band", password: "teramelos", email: "teramelos@gmail.com", name: "Tera Melos", bio: "We love The Simpsons", state: "California", city: "Sacramento", genre: "math rock", profile_img: "https://78.media.tumblr.com/725321205116b740a3d37218fb87e069/tumblr_inline_nd4w33rvKQ1qbzv4w.jpg")
joji = Band.create(profile_type: "band", password: "joji", email: "joji@gmail.com", name: "Joji", bio: "sad boy for life", state: "New York", city: "Brooklyn", genre: "lo-fi hip hop", profile_img: "http://rivevideo.com/wp-content/uploads/2018/05/Screen-Shot-2018-05-14-at-3.02.38-PM.png" )
circa = Band.create(profile_type: "band", password: "circa", email: "circa@gmail.com", name: "Circa Survive", bio: "Feel the feels", state: "Philadelphia", city: "Doylestown", genre: "emo rock", profile_img: "https://f4.bcbits.com/img/a3415465681_10.jpg")
mars = Band.create(profile_type: "band", password: "marsvolta", email: "marsvolta@gmail.com", name: "The Mars Volta", bio: "Members from At The Drive In", city: "El Paso", state: "Texas", genre: "experimental progressive rock", profile_img: "https://i.pinimg.com/originals/34/ea/69/34ea695527a8cca4bf822bbcf213b05a.jpg")
capn = Band.create(profile_type: "band", password: "capnjazz", email: "capnjazz@gmail.com", name: "Cap'n Jazz", bio: "Grand Papas of Emo", state: "Ilinois", city: "Chicago", genre: "emo", profile_img: "https://f4.bcbits.com/img/a1139886656_10.jpg")
lilpump = Band.create(profile_type: "band", password: "lilpump", email: "lilpump@gmail.com", name: "Lil Pump", bio: "My Lean Cost More Than Yuh Rent", state: "Florida", city: "Miami", genre: "hip hop trap", profile_img: "https://yt3.ggpht.com/a-/ACSszfEIRibvkhsvN7ovhg8GnjrgYyux2T6f8B3j-A=s900-mo-c-c0xffffffff-rj-k-no")
bigbang = Band.create(profile_type: "band", password: "bigbang", email: "bigbang@gmail.com", name: "Big Bang", bio: "We Bang Hard", state: "Korea", city: "South", genre: "kpop", profile_img: "http://kprofiles.com/wp-content/uploads/BigBang.jpg")
babyshakes = Band.create(profile_type: "band", password: "babyshakes", email: "babyshakes@gmail.com", name: "Baby Shakes", bio: "Baby Shakes are a rock n’ roll-punk band from New York City.", state: "New York", city: "New York", genre: "punk rock", profile_img: "https://f4.bcbits.com/img/a0748355027_16.jpg")
babyacid = Band.create(profile_type: "band", password: "babyacid", email: "babyacid@gmail.com", name: "BabyAcid", bio: "Undefined", state: "New York", city: "Brooklyn", genre: "acid noise punk rock", profile_img: "http://nyc.thedelimagazine.com/sites/upload-files/13892330_1030907780360853_5895241876379275525_n.jpg" )
pavopavo = Band.create(profile_type: "band", password: "pavopavo", email: "pavopavo@gmail.com", name: "Pavo Pavo", bio: "slow karmic, microwave mystical", state: "New York", city: "Brooklyn", genre: "psychadelic dream rock", profile_img: "https://weathervanemusic.org/uploads/files/827645409304781186-pavo-pavo-16.full.jpg")

local = Venue.create(profile_type: "venue", password: "local", email: "local@gmail.com", name: "El Local", description: "dirty", genres: "punk, rock", profile_img:"https://s3-media3.fl.yelpcdn.com/bphoto/DxHolPdLR3R0jDj6Nhtmyg/ls.jpg", state:"Puerto Rico", city: "Santurce")
club77 = Venue.create(profile_type: "venue", password: "club", email: "club77@gmail.com", name: "Club 77", description: "punk", genres: "all", profile_img: "https://i.ytimg.com/vi/6jFPIH6-Zg4/maxresdefault.jpg", state: "Puerto Rico", city: "Santurce")
unionhall = Venue.create(profile_type: "venue", password: "unionhall", email: "unionhall@gmail.com", name: "Union Hall", description: "Bar, restaurant, and live music", state: "New York", city: "Brooklyn", genres: "surf alternative punk rock psych", profile_img:"https://www.unionhallny.com/files/2017/06/12.-Union-Hall-Fireplace-2-By-Isaac-Danna-1137x700.jpg")
arlenes = Venue.create(profile_type: "venue", password: "arlens", email: "arlens@gmail.com", name: "Arlene's Grocery", description: "Dive bar with live music and karaoke", genres: "all", profile_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxAHbjYy2kDMkQcEtdEmvIVGjVH1pZgqGE8lzh0WIMIfdrJqN6qA", state: "New York", city: "New York")
mercury = Venue.create(profile_type: "venue", password: "mercury", email: "mercurylounge@gmail.com", name: "Mercury Lounge", description: "club/music venue", genres: "all", profile_img: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/WSTM_Team_Dustizeff_0082.jpg/300px-WSTM_Team_Dustizeff_0082.jpg", state: "New York", city: "New York")
rebeccas = Venue.create(profile_type: "venue", password: "rebeccas", email: "rebeccas@gmail.com", name: "Rebecca's", description: "Dance & Night Club", genres: "house vapor wave", profile_img: "http://www.bkmag.com/wp-content/uploads/2016/11/FOB7.jpg", state: "New York", city: "Brooklyn")

i = 0

15.times do
  Band.create(
    profile_type: "band",
    email: Faker::Internet.unique.email,
    name: Faker::Hipster.word + " " + Faker::Hipster.word,
    password: Faker::Internet.password,
    genre: Faker::Music.genre,
    city: Faker::Address.city,
    state: Faker::Address.state,
    bio: Faker::Hipster.sentence,
    profile_img: band_images[i]
  )

  Venue.create(
    profile_type: "venue",
    email: Faker::Internet.unique.email,
    name: Faker::Hipster.word + " " + Faker::Hipster.word,
    password: Faker::Internet.password,
    genres: Faker::Music.genre,
    city: Faker::Address.city,
    state: Faker::Address.state,
    description: Faker::Hipster.sentence,
    profile_img: venue_images[i]
  )
  i += 1
end

num_bands = (0...30).to_a
num_venues = (0...21).to_a
num_days = ("1".."27").to_a
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
months = ["Jun", "Jul", "Aug", "Sep", "Nov", "Dec"]
j = 0
30.times do 
  Show.create(
    name: Faker::Hipster.word + " " + Faker::Hipster.word,
    flyer: show_images[j],
    venue_id: num_venues.sample,
    date: "#{days.sample} #{months.sample} #{num_days.sample} 2018"
  )
  j += 1
end

Show.all.each {|show| 
  3.times do 
    show.bands << Band.all[num_bands.sample]
  end 
}
