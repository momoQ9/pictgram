class User < ApplicationRecord
  validates :name, presence: true, length: {in: 1..15}
  validates :email, presence: true, format: {with: /A[\w.!#$%&'*+\/=?^_`{|}~-]+@\w+(?:\.\w+)*z/}
  validates :password, format: {with: /A(?=.*\d)(?=.*?[a-z]).{8,32}z/}
  has_secure_password

  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
end
