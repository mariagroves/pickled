class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    @comment.user = current_user
    @comment.post = @post
    if @comment.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post
    @comment.destroy
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
