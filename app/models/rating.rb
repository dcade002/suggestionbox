class Rating < ActiveRecord::Base
  attr_accessible :rating, :user_id
end