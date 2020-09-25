class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, length: { in: 1..2000 }

  belongs_to :user, foreign_key: 'user_id'

end
