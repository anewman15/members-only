class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :fname, length: { in: 1..50 }
  validates :lname, length: { in: 1..50 }
  validates :username, length: { minimum: 3 }

  has_many :posts
end
