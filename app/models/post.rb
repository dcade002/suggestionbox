class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :votes

  validates :user_id, presence: true

  default_scope order: 'posts.created_at DESC'
end
