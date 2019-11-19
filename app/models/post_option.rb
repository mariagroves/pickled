class PostOption < ApplicationRecord
  belongs_to :post
  has_many :post_votes
  validates :kind, presence: true
  mount_uploader :image, PhotoUploader
end
