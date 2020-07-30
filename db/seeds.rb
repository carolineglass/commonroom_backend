# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'httparty'
require 'byebug'
require 'nokogiri'

puts "destroy Country"
Country.destroy_all
puts "destroy User"
User.destroy_all
puts "destroy Post"
Post.destroy_all
puts "destroy PostLike"
PostLike.destroy_all
puts "destroy Comment"
Comment.destroy_all


# COUNTRIES
# france = Country.create(name: "France", img: "", flag: "")
# australia = Country.create(name: "Australia", img: "", flag: "")

puts "create countries(250)"
url = 'http://countryapi.gear.host/v1/Country/getCountries'
response = HTTParty.get(url)
data = response.parsed_response

data["Response"].each do |country|
    Country.create({
        name: country["Name"],
        img: "https://images.unsplash.com/photo-1507608869274-d3177c8bb4c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
        flag: country["Flag"]
    })
end

australia = Country.find_by(name: "Australia")
indonesia = Country.find_by(name: "Indonesia")
mexico = Country.find_by(name: "Mexico")



# USERS
caroline = User.create(
        first_name: "Caroline", 
        last_name: "Glass",
        username: "bigron89",
        age: 30, 
        img: "https://ca.slack-edge.com/T02MD9XTF-U011R2GNC77-9c120100f0b3-512", 
        from: "USA", 
        country_id: australia.id, 
        bio: "Hi, i'm Caroline", 
        answer: "Thai food"
        )

meghann = User.create(
        first_name: "Meghann",
        last_name: "Walsh",
        username: "Meg123",
        age: 24, 
        img: "https://ca.slack-edge.com/T02MD9XTF-UL33YDYRX-305742ce1399-512", 
        from: "USA", 
        country_id: australia.id, 
        bio: "Hi, i'm Meghann", 
        answer: "tacos"
        )  

kat = User.create(
    first_name: "Kat", 
    last_name: "Maldon",
    username: "LanaKane",
    age: 35, 
    img: "https://ca.slack-edge.com/T02MD9XTF-U010S0FNPB6-792446a6ac06-512", 
    from: "Germany", 
    country_id: australia.id, 
    bio: "Nomadic explorer. Creature of havoc.", 
    answer: "Pasta with ragu"
    )

edgar = User.create(
    first_name: "Edgar", 
    last_name: "Rivera",
    username: "ProtoLex",
    age: 26, 
    img: "https://ca.slack-edge.com/T02MD9XTF-UTV12MJBG-c6fb5b39ab15-512", 
    from: "USA", 
    country_id: australia.id, 
    bio: "Backpacker by day, coder at night", 
    answer: "Chicken Pad Thai"
    )

ramon = User.create(
    first_name: "Ramon", 
    last_name: "Echeverria",
    username: "Piggie_smalls",
    age: rand(18..45), 
    img: "https://ca.slack-edge.com/T02MD9XTF-U010MQQRC0N-f7e942518a93-512", 
    from: "USA", 
    country_id: australia.id, 
    bio: "Likes pizza, waffles A la mode and sangria", 
    answer: "Grandma Slice"
    )

urgen = User.create(
    first_name: "Urgen", 
    last_name: "Sherpa",
    username: "Urgen123",
    age: 25, 
    img: "https://ca.slack-edge.com/T02MD9XTF-UV11S4QJG-473d4b6d3d08-512", 
    from: "Nepal", 
    country_id: indonesia.id, 
    bio: "Hi just do stuff", 
    answer: "Burgers, pizza, any junk food"
    )

joseph = User.create(
    first_name: "Joseph", 
    last_name: "Lin",
    username: "carpe_ramen",
    age: 34, 
    img: "https://ca.slack-edge.com/T02MD9XTF-U010ARCJ54H-887e6f47bab8-512", 
    from: "USA", 
    country_id: indonesia.id, 
    bio: "Food is life.", 
    answer: "Ramen"
    )

    mari = User.create(
        first_name: "Mari", 
        last_name: "Anuashvili",
        username: "mother_of_shibas",
        age: 25, 
        img: "https://ca.slack-edge.com/T02MD9XTF-URW0WRBUH-c9de3ba8e6f0-512", 
        from: "Georgia", 
        country_id: indonesia.id, 
        bio: "Likes skiing, biking, and traveling ", 
        answer: "Khachapuri"
    )

    rosie = User.create(
        first_name: "Rosie", 
        last_name: "Wilt",
        username: "buffygirl27",
        age: 21, 
        img: "https://ca.slack-edge.com/T02MD9XTF-U011R2GEJ6R-a7f9d525aec1-512", 
        from: "USA", 
        country_id: indonesia.id, 
        bio: "I like coding, cooking, and waving at cute dogs on the street", 
        answer: "Mac and Cheese"
        )

        sofia = User.create(
            first_name: "Sofia", 
            last_name: "Tofigh",
            username: "supremesofi",
            age: 23, 
            img: "https://ca.slack-edge.com/T02MD9XTF-U011R2GDLBF-5b9097599cb3-512", 
            from: "USA", 
            country_id: indonesia.id, 
            bio: "Professional wanderer", 
            answer: "carbonara pastaaa"
            )

            srishti = User.create(
                first_name: "Srishti", 
                last_name: "Nath",
                username: "jadeprincess93",
                age: 26, 
                img: "https://ca.slack-edge.com/T02MD9XTF-U011R2GA4RK-0d497953e3ef-512", 
                from: "India", 
                country_id: indonesia.id, 
                bio: "I ate smoked whale once. It was not good.", 
                answer: "Fresh shrimp pad thai"
                )

            kyle = User.create(
                    first_name: "Kyle", 
                    last_name: "Tomanelli",
                    username: "totallykyle",
                    age: 24, 
                    img: "https://ca.slack-edge.com/T02MD9XTF-U011R2GGGDB-4f0e76a7f01d-512", 
                    from: "USA", 
                    country_id: australia.id, 
                    bio: "Totally!", 
                    answer: "pizza + garlic bread ❤️"
                    )
                    james = User.create(
                        first_name: "James", 
                        last_name: "Jiang",
                        username: "JamesTheDebugger",
                        age: 5, 
                        img: "https://ca.slack-edge.com/T02MD9XTF-U011R2GKNCD-4b9c75b022f8-512", 
                        from: "China", 
                        country_id: indonesia.id, 
                        bio: "James is a debugger, the bugs are killing him, but he is still debugging. His world was simple — him, the world, and the bugs, until he sees Caroline’s app. Now his life is colorful — him, the world, the bugs, and Caroline’s app.", 
                        answer: "Takoyaki"
                        )
                        coral = User.create(
                            first_name: "Coral", 
                            last_name: "Fussman",
                            username: "coralreef",
                            age: 25, 
                            img: "https://ca.slack-edge.com/T02MD9XTF-U01083YN6CA-07e236f1fe28-512", 
                            from: "Israel", 
                            country_id: australia.id, 
                            bio: "catch me outside", 
                            answer: "cheese, hummus, avocado"
                            )
                        eric = User.create(
                                first_name: "Eric", 
                                last_name: "Kim",
                                username: "backpackerEric",
                                age: 25, 
                                img: "https://ca.slack-edge.com/T02MD9XTF-U91CXSUN4-3bac0a7f6a08-512", 
                                from: "USA", 
                                country_id: australia.id, 
                                bio: "you can call me snuffles", 
                                answer: "chicken, gatorade, water"
                            )
                           jess = User.create(
                                first_name: "Jessica", 
                                last_name: "Kim",
                                username: "jaykay",
                                age: 28, 
                                img: "https://ca.slack-edge.com/T02MD9XTF-U011R2GJKUM-74112b0f9808-512", 
                                from: "USA", 
                                country_id: australia.id, 
                                bio: "Teacher turned developer", 
                                answer: "French Fries"
                            )
            
# POSTS 
post1 = Post.create(
    user_id: jess.id, 
    country_id: australia.id, 
    title: "Bike Ride", 
    post: "Hey! Who's trying to rent bikes around the city", 
    category: "Activity",
    img: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS68pKgN3yMCx_n22Pfq6S2addssahj85FhTQ&usqp=CAU"
    )

post3 = Post.create(
    user_id: ramon.id, 
    country_id: australia.id, 
    title: "Camping", 
    post: "any free campgrounds around perth?", 
    category: "Recommendation",
    img: "data:image/jpeg;base64,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"
    )

post4 = Post.create(
    user_id: edgar.id, 
    country_id: australia.id, 
    title: "Van for sale", 
    post: "Selling my van, great condition", 
    category: "For Sale",
    img: "https://images.squarespace-cdn.com/content/v1/57ef0117579fb34c2451c73b/1585017512460-KG6GZSQ6NI9UNDTM9Z2S/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/VLC_POPS-59.jpg?format=1500w"
    )

# LIKES
like1 = PostLike.create(
        user_id: meghann.id, 
        post_id: post1.id
    )

like2 = PostLike.create(
        user_id: caroline.id, 
        post_id: post1.id
    )

like3 = PostLike.create(
        user_id: caroline.id, 
        post_id: post4.id
    )
    
# COMMENTS
comment1 = Comment.create(
    user_id: meghann.id, 
    post_id: post1.id,
    comment: "yea! let's do it!"
    )

comment2 = Comment.create(
    user_id: caroline.id, 
    post_id: post1.id,
    comment: "Awesome"
    )

comment3 = Comment.create(
    user_id: meghann.id, 
    post_id: post3.id,
    comment: "Yea I know a great spot on cable Beach!"
    )

    australia.update(img: "https://t1.gstatic.com/images?q=tbn:ANd9GcTN2ZvHJHP0mp36EjiGKTtX6zeKF-hrDGkFSebPn53vP7b4tPhywXweCJ1b8pYTYxwnN6SMR0dlg2jB6Q")
    indonesia.update(img: "https://images.unsplash.com/photo-1496531693211-31c5234a5ea9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
    mexico.update(img: "https://images.unsplash.com/photo-1562869929-bda0650edb1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1362&q=80")