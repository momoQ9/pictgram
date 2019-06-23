class User < ApplicationRecord
  validates :name, presence: true, length: {in: 1..15}
  validates :email, presence: true, format: {with: /A[\w.!#$%&'*+\/=?^_`{|}~-]+@\w+(?:\.\w+)*z/}
  validates :password, format: {with: /A(?=.*\d)(?=.*?[a-z]).{8,32}z/}
  has_secure_password
end
