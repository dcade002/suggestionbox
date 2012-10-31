class Post < ActiveRecord::Base
  acts_as_rateable
  belongs_to :user
  attr_accessible :description, :votes, :rating, :user_id

  validates :user_id, presence: true

  default_scope order: 'posts.created_at DESC'
end
