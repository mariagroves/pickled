class PostOption < ApplicationRecord
  belongs_to :post
  has_many :post_votes
  validates :category, presence: true
  mount_uploader :image, PhotoUploader
end
