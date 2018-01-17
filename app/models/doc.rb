class Doc < ApplicationRecord
  belongs_to :user
  has_many :post_likes
end