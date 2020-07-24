class Post < ApplicationRecord
    belongs_to :user
    belongs_to :country

    has_many :post_likes
    has_many :likes_users, :through => :post_likes, :source => :user

    has_many :comments
    has_many :comments_users, :through => :comments, :source => :user

    def date_created
        self.created_at.strftime("%B %e, %Y")
    end
end

