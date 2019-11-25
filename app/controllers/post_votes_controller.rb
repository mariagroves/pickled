class PostVotesController < ApplicationController

  def create
    @post_vote = PostVote.new(post_vote_params)
    @post = Post.find(params[:post_id])
    @post_vote.user = current_user
    # if
      @post_vote.save
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
