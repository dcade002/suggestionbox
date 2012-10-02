class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
  	attr_accessible :email, :name
end
