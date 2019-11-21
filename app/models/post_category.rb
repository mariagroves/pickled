# == Schema Information
#
# Table name: post_categories
#
#  id          :bigint           not null, primary key
#  post_id     :bigint
#  category_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PostCategory < ApplicationRecord
  belongs_to :post
  belongs_to :category
end
