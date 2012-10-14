class User < ActiveRecord::Base
  attr_accessible :email, :name
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 8 }
  validates :password_confirmation, presence: true

  before_save { self.email.downcase! }
end
