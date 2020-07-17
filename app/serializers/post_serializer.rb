class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :post, :category, :img, :user, :country

  has_many :comments
  has_many :post_likes
end
