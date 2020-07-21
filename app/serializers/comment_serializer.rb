class CommentSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :user, :comment

end
