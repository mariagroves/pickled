class PostOption < ApplicationRecord
  belongs_to :post
  has_many :post_votes
  mount_uploader :image, PhotoUploader
end
