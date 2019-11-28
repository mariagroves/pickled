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

class PostVote < ApplicationRecord
  belongs_to :user
  belongs_to :post_option
  validate :one_vote_per_post
  # validate :vote_own_post

  def one_vote_per_post
    votes = user.own_votes.joins(:post_option).where('post_options.post_id = ?', post_option.post.id)
    # votes = user.own_votes.joins(:post_option).where(post_options: { post_id: self.post_option.post.id })
    self.errors.add(:post_option, "You have already voted!") unless votes.empty?
  end

  def vote_own_post
    self.errors.add(:post_option, "You can't vote for your own post!") if self.user == self.post_option.post.user
  end
end
