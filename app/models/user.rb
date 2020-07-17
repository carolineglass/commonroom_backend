class User < ApplicationRecord
    belongs_to :country, :class_name => "Country"

    has_many :posts 
    has_many :countries, through: :posts

    has_many :post_likes
    has_many :liked_posts, :through => :post_likes, :source => :post

    has_many :comments
    has_many :post_comments, :through => :comments, :source => :post

    def full_name
        first_name + " " + last_name
    end
end


