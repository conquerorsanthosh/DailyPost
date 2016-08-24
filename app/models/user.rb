class User < ActiveRecord::Base
  has_one :profile
  has_many :articles
  has_many :comments ,:through => :articles

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email ,presence: true ,length: {maximum: 255},uniqueness: {case_sensitive: false},
            format: {with:VALID_EMAIL_REGEX}
  has_secure_password
  validates :password ,length:{minimum: 6}

end
