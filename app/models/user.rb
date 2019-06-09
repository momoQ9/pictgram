class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: {in: 8..32}


  validates :name, length: {in: 1..15}
  has_secure_password
end
