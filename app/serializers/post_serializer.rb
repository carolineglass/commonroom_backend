class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :post, :category, :img, :user, :country, :date_created

  has_many :comments
  has_many :post_likes


end
