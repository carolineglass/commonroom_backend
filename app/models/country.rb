class Country < ApplicationRecord
    has_many :posts
    has_many :users, through: :posts

    has_many :current_users, :class_name => "User", :foreign_key => "country_id"
end
