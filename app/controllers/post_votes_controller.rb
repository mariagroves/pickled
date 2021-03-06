class PostVotesController < ApplicationController

  def create
    @post_vote = PostVote.new(post_vote_params)
    @post = Post.find(params[:post_id])
    @post_vote.user = current_user
    @post_option = @post_vote.post_option

    # if
    @post_vote.save

    @vote_count = @post_vote.post_option.post_votes.count
    @other_vote_count = @post.post_options.where.not(id: @post_vote.post_option).first.post_votes.count
      # redirect_to post_path(@post)
    # else
      # errors_messages = @post_vote.errors.messages
      # if errors_messages[:post_option].present?
      #   flash[:alert] = errors_messages[:post_option].first
      # else
      #   flash[:alert] = "Something went wrong."
      # end
      # render 'posts/show'
    # end
  end

  def post_vote_params
    params.permit(:post_option_id)
  end
end
