class Post < ActiveRecord::Base
  ajaxful_rateable stars: 5, allow_update: true
  belongs_to :user
  attr_accessible :description, :votes, :rating, :user_id

  validates :user_id, presence: true

  default_scope order: 'posts.created_at DESC'
end
