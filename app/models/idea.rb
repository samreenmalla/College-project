class Idea < ApplicationRecord

	belongs_to :user
	validates :description, :author, presence: true
end
 