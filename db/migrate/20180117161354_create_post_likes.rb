class CreatePostLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :post_likes do |t|
      t.belongs_to :user, index: true, foreign_key: true, null: false

    end
  end
end
