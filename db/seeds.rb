
# create posts
100.times do
  country = Faker::Address.country
  words = ["cool", "scary", "drunk", "wasted", "sweet", "phat"]

  text = [  "Cred wolf iPhone ennui, banh mi Godard photo booth narwhal sriracha Truffaut mlkshk. Fanny pack forage swag, mixtape vinyl gentrify seitan pug. Irony Vice freegan, Truffaut four loko Bushwick keytar wolf post-ironic. Terry Richardson freegan polaroid raw denim. Godard actually plaid, twee post-ironic Etsy ennui Odd Future synth. Wayfarers fingerstache Godard shabby chic, organic Portland you probably haven't heard of them direct trade hella cray occupy dreamcatcher narwhal Bushwick. Squid vinyl 8-bit, food truck bitters Marfa disrupt Odd Future pop-up irony blue bottle lomo four loko Schlitz.",
            "Tumblr roof party mlkshk iPhone Neutra, cliche lomo yr. Fixie seitan Austin, quinoa artisan single-origin coffee sartorial. Trust fund dreamcatcher Brooklyn, quinoa farm-to-table american apparel gentrify Truffaut Vice mixtape four loko aesthetic. Cornhole intelligentsia scenester vegan. Ugh helvetica Etsy Tonx synth quinoa. Single-origin coffee jean shorts fap, asymmetrical leggings food truck Odd Future small batch kogi iPhone banh mi. Austin blue bottle pitchfork church-key Neutra chillwave bitters intelligentsia.",
            "Flannel artisan fap readymade blue bottle, pug flexitarian VHS Williamsburg gentrify Vice. Whatever ugh Etsy tattooed, PBR letterpress messenger bag freegan Wes Anderson photo booth viral. Fanny pack four loko wolf craft beer hashtag brunch, Williamsburg swag scenester roof party. Hoodie salvia DIY literally, pour-over before they sold out wolf +1 McSweeney's Banksy asymmetrical blue bottle Echo Park craft beer. Tattooed sustainable jean shorts Wes Anderson selfies. Sustainable pug kitsch letterpress cliche seitan McSweeney's master cleanse aesthetic, bicycle rights meh locavore. Meggings church-key mumblecore, pug trust fund hoodie Wes Anderson leggings.",
            "Sriracha aesthetic narwhal fixie. Gastropub occupy swag Brooklyn, fashion axe wayfarers butcher skateboard retro. Vice fap yr put a bird on it stumptown. Kitsch stumptown banh mi, organic pork belly authentic art party try-hard. 3 wolf moon twee try-hard deep v raw denim asymmetrical. Kitsch wolf gastropub chambray, letterpress literally organic synth actually cornhole quinoa pork belly shabby chic. Fanny pack umami meggings fashion axe organic, pickled plaid cornhole.",
            "Thundercats post-ironic irony, wolf Brooklyn Marfa chambray master cleanse skateboard raw denim tousled. Plaid ethical Portland shoreditch, banjo pitchfork irony viral chambray fixie organic Carles 90's selfies. Gentrify beard freegan, hashtag iPhone swag blue bottle chillwave meh sustainable ethical. Organic selfies four loko tofu, yr PBR Williamsburg Carles banh mi fingerstache vinyl. Meggings selfies Banksy craft beer four loko, you probably haven't heard of them tattooed cray swag tofu photo booth Carles tumblr cred. Authentic cliche you probably haven't heard of them lo-fi, pitchfork retro readymade mlkshk. Blog forage lomo, shabby chic Banksy pitchfork lo-fi keytar.",
            "Direct trade mustache polaroid, VHS Echo Park authentic High Life church-key beard 3 wolf moon messenger bag art party roof party Terry Richardson actually. Tumblr iPhone readymade art party gluten-free, vegan thundercats blog cornhole. Readymade actually pour-over Wes Anderson, cornhole gentrify tattooed lomo. Put a bird on it selvage pickled, bespoke fixie stumptown tattooed. Raw denim disrupt mumblecore Terry Richardson meggings, ennui farm-to-table pour-over Etsy literally Vice twee. Odd Future fixie cray, flexitarian wolf single-origin coffee leggings selvage small batch vinyl. Squid sartorial High Life cred, ugh farm-to-table YOLO occupy +1 put a bird on it art party disrupt thundercats tumblr."]

  urls = [  "http://www.beckermanphoto.com/wp-content/uploads2/thumb-cache/statue-of-liberty-5010-beckermanphoto-393x590-9d6b6fd95b5aa033fda7fc39ab8eda69-283x425-75-nocrop.jpg",
            "http://www.beckermanphoto.com/wp-content/uploads2/thumb-cache/poets-walk-fm2-590x472-89d13daf1a394e09edd29d9630d0f497-531x425-75-nocrop.jpg",
            "http://www.beckermanphoto.com/wp-content/uploads2/thumb-cache/Skating-Rink-fm22-590x472-57e45adb15407e568433d4e3b1496ad5-531x425-75-nocrop.jpg",
            "http://www.beckermanphoto.com/wp-content/uploads2/UnderManhattanBridge-fm-590x393.jpg",
            "http://www.beckermanphoto.com/wp-content/uploads2/reservoir-runner-01351-590x393.jpg",
            "http://www.beckermanphoto.com/wp-content/uploads2/thumb-cache/grand-central-arches-fm-590x472-60ef3d08a4ed531d5b9cf8cf0fe8b056-531x425-75-nocrop.jpg",
            "http://www.beckermanphoto.com/wp-content/uploads2/TasteOfSnow-fm1-590x393.jpg",
            "http://www.beckermanphoto.com/wp-content/uploads2/poets_walk_winter-fm1-590x393.jpg"]

  post = Post.create(title: "My #{words.sample} #{country} adventures", text: text.sample, url: urls.sample)
  post.tags << Tag.find_or_create_by_name(name: country)
end




# user_post = Post.create(name:"user_input", text:"user_input", url: "user_input")

# tag = "Berlin"

# user_post.tags << Tag.find_or_create
