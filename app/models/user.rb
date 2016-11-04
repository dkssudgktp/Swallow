class User < ApplicationRecord
  has_secure_password
  before_save {self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
