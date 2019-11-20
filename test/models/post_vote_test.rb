# == Schema Information
#
# Table name: post_votes
#
#  id             :bigint           not null, primary key
#  user_id        :bigint
#  post_option_id :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class PostVoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
