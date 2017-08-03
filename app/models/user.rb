class User < ActiveRecord::Base
  validates :username, presence: true, 
            uniqueness: { case_sensitive: false }, 
            length: { minimum: 3, maxium: 25 }
  VAILD_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,  
            uniqueness: { case_sensitive: false }, 
            length: { maxium: 105 }
            format: { with: VALID_EMAIL_REGEX }
end