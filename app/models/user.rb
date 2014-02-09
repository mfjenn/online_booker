class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  has_one :profile
  validates :state, presence: true, length: { maximum: 2 }
  validates :first_name, :last_name, :email, :phone, :city, :zip, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX } 
  
end
