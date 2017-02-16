class User < ApplicationRecord


  after_initialize :ensure_session_token
  attr_reader :password

  def self.generate_session_token

  end

  def reset_session_token!

  end

  def ensure_session_token

  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)

  end
end
