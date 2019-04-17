class User < ApplicationRecord
  has_secure_password
  has_many :notes
  validates :name, :email, :password, presence: true
  validates :email, uniqueness: true
end
