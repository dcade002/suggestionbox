class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 8 }
  validates :password_confirmation, presence: true

  before_save { self.email.downcase! }
  before_save :create_remember_token

  has_many :posts, dependent: :destroy

  def feed
    Post.where("user_id = ?", id)
  end

  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
