class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :content, presence: true
  # Rails 內建API scope  
  # example post.recent 就等於 post.order("created_at DESC")
  scope :recent, -> { order("created_at DESC")}
end
