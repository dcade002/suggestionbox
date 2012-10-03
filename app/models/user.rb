class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
  	attr_accessible :email, :name

  	validates :name, presence: true, length: {maximum: 20}
 
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end
