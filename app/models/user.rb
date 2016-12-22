class User < ActiveRecord::Base

  validates :email, presence: true
  validates :credentials, presence: true

  has_many :moods
  has_many :comments
end
