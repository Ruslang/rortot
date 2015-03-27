class User < ActiveRecord::Base
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[^0-9-_\.\s\W]([\.-]?[-0-9a-zA-Z-]+)*[^-_\.\s\W]@[0-9a-zA-Z]([\.-]?[0-9a-zA-Z])*(\.[0-9a-zA-Z]{2,8})+\z/
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
end
