class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15}
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, length: { in: 8..32 }, format: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}+\z/i

  has_many :topics

  has_secure_password
end
