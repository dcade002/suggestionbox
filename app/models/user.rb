class User < ActiveRecord::Base

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
	has_many :posts, dependent: :destroy

  validates :name, presence: true, length: {maximum: 20}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness: {case_sensitive: false}

end
