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
end
