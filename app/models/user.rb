require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt

  has_many :surveys
  has_many :responses

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates :email, presence: true, uniqueness: true

  validates :name, :password_hash, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(user_input)
    self.password == user_input
  end
end
