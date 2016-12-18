class User < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :user_name, presence: true
  validates :password_digest, presence: true

  has_many :moods
  has_many :comments

end
end
