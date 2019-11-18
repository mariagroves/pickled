class PostOption < ApplicationRecord
  belongs_to :post
  has_many :post_votes
  validates :type, presence: true
end
