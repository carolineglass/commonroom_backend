class ChangePostToBeTextInPosts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :post, :text
  end
end
