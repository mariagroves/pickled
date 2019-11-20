# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  content    :string
#  user_id    :bigint
#  post_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :content, presence: true
end
