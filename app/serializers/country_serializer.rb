class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :flag

  has_many :current_users
  has_many :posts
end