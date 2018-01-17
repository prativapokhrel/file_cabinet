class AddDocIdToPostLikes < ActiveRecord::Migration[5.1]
  def change
    change_table :post_likes do |t|
      t.belongs_to :doc, index: true, foreign_key: true

    end
  end
end
