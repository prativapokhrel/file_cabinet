class PostLike < ApplicationRecord
  belongs_to :user
  belongs_to :doc

  def post_liked_by_user?(user)
    binding.pry
    return true if self.user_id == user.id
    else return false

  end 
end 