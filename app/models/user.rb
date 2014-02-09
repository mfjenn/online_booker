class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  has_one :profile
  validates :state, length: { maximum: 2 }
  validates :firstname, :lastname, :email, :phone, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX } 
end
