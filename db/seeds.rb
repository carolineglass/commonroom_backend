# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
france = Country.create(name: "France", img: "", flag: "")
australia = Country.create(name: "Australia", img: "", flag: "")

# USERS
caroline = User.create(
        first_name: "Caroline", 
        last_name: "Glass",
        username: "bigron89",
        age: 30, 
        img: "an img source", 
        from: "USA", 
        country_id: france.id, 
        bio: "Hi, i'm Caroline", 
        answer: "thai food"
        )

meghann = User.create(
        first_name: "Meghann",
        last_name: "Walsh",
        username: "Meg123",
        age: 24, 
        img: "an img source", 
        from: "USA", 
        country_id: france.id, 
        bio: "Hi, i'm Meghann", 
        answer: "tacos"
        )  
            
# POSTS 
post1 = Post.create(
    user_id: caroline.id, 
    country_id: france.id, 
    title: "Bike Ride", 
    post: "Hey! Who's trying to rent bikes around the city", 
    category: "adventure",
    img: ""
    )

post2 = Post.create(
    user_id: caroline.id, 
    country_id: france.id, 
    title: "Airport", 
    post: "anyone want to split a ride to the airport 1/20 at 8", 
    category: "rideshare",
    img: ""
    )

post3 = Post.create(
    user_id: caroline.id, 
    country_id: australia.id, 
    title: "Camping", 
    post: "any free campgrounds around perth?", 
    category: "recommendations",
    img: ""
    )

post4 = Post.create(
    user_id: meghann.id, 
    country_id: australia.id, 
    title: "Van for sale", 
    post: "Selling my van, great condition", 
    category: "for sale",
    img: ""
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
    comment: "Yea I know a great spot off ocean st!"
    )

