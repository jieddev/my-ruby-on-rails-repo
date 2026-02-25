class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :first_name, length: { minimum: 5}
  validates :last_name, length: { minimum: 5}
  validates :email, length: {minimum: 5}, uniqueness: true
end
