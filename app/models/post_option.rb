# == Schema Information
#
# Table name: post_options
#
#  id         :bigint           not null, primary key
#  image      :string
#  content    :text
#  post_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PostOption < ApplicationRecord
  belongs_to :post
  has_many :post_votes, dependent: :destroy
  mount_uploader :image, PhotoUploader
  validate :has_content
  validates :content, length: { maximum: 280 }

  def has_content
    self.errors.add(:content, "needs to be either text or photos") if image.file.nil? && content.empty?
  end
end
