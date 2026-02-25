class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, length: { minimum: 1 }
  validates :body, length: { minimum: 1}
end
