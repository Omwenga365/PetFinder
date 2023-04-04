class User < ApplicationRecord
  has_many :posts
  has_many :dogs, through: :posts
end
