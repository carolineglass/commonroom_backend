class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :flag

  has_many :current_users
  has_many :posts

  def posts
    object.posts.order! 'created_at DESC'
  end 
  # has_many :users, through: :comments
end
