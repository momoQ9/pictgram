class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: {in: 8..32}
  validates :password, format: {with: /^(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}$+/z}
  validates :password, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z}
  validates :name, length: {in: 1..15}
  has_secure_password
end
