class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :fname, length: { in: 1..50 }
  validates :lname, length: { in: 1..50 }
  validates :username, length: { in: 3..20 }

  has_many :posts
end
