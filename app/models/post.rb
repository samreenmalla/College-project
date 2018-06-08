class Post < ApplicationRecord

  belongs_to :user
  validates :photo, :caption, :user_id, presence: true
  mount_uploader :photo, PhotoUploader
end