class User < ActiveRecord::Base
  has_one :profile
  validates :state, length: { maximum: 2 }
end
