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

require 'test_helper'

class PostOptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
