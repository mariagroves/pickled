class PostVote < ApplicationRecord
  belongs_to :user
  belongs_to :post_option
  validate :one_vote_per_post

  def one_vote_per_post
    votes = user.post_votes.joins(:post_option).where('post_options.post_id = ?', post_option.post.id)
    # votes = user.post_votes.joins(:post_option).where(post_options: { post_id: self.post_option.post.id })
    self.errors.add(:post_option, "You have already voted!") unless votes.empty?
  end
end
#
