class Post < ActiveRecord::Base
  attr_accessible :description, :votes
end
