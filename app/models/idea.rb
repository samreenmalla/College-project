class Idea < ApplicationRecord
  validates :description, presence: true
  belongs_to :user
  acts_as_taggable
end
