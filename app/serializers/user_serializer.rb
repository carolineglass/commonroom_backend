class UserSerializer < ActiveModel::Serializer
  #attributes in serializers take in instance methods as symbols
  #when we want to send out relationships, you might not want to use attributes
  attributes :id, :full_name, :username, :age, :img, :from, :bio, :answer, :country

  #when we use AR macros, were telling the user serializer to call on the post serializer
  has_many :posts
    #contains the comments and likes of this post
  has_many :liked_posts
  #all the actual posts they liked
end

