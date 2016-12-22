class Comment < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :mood
  belongs_to :user
end
