class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :fname, length: { 1..50 }
  validates :lname, length: { 1..50 }
  validates :username length: { minimum: 1 }
end
