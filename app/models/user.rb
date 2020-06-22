class User < ApplicationRecord
  has_many :articles
  validates :username, presence: true, length: { in: 3..20 },
  uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 244 },
   format: { with: VALID_EMAIL_REGEX },
   uniqueness: true
   has_secure_password
end
