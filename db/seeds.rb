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
        img: "",
        flag: country["Flag"]
    })
end

australia = Country.find_by(name: "Australia")
indonesia = Country.find_by(name: "Indonesia")

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
            
# POSTS 
post1 = Post.create(
    user_id: caroline.id, 
    country_id: australia.id, 
    title: "Bike Ride", 
    post: "Hey! Who's trying to rent bikes around the city", 
    category: "Activity",
    img: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS68pKgN3yMCx_n22Pfq6S2addssahj85FhTQ&usqp=CAU"
    )

post2 = Post.create(
    user_id: caroline.id, 
    country_id: australia.id, 
    title: "Airport", 
    post: "anyone want to split a ride to the airport 1/20 at 8am", 
    category: "Rideshare",
    img: "data:image/jpeg;base64,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"
    )

post3 = Post.create(
    user_id: caroline.id, 
    country_id: australia.id, 
    title: "Camping", 
    post: "any free campgrounds around perth?", 
    category: "Recommendation",
    img: "data:image/jpeg;base64,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"
    )

post4 = Post.create(
    user_id: meghann.id, 
    country_id: australia.id, 
    title: "Van for sale", 
    post: "Selling my van, great condition", 
    category: "for sale",
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

