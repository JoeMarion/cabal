class User < ActiveRecord::Base
  validates :username, :email, :password_hash, presence: true
  validates :email, uniqueness: true
  has_many :posts
  has_many :announcements
  has_many :comments
  has_many :url_feeds
  has_many :networks, through: :networks_users
  has_many :conversations, :foreign_key => :sender_id

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
