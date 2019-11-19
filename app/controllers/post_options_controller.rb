class PostOptionsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @post_option = PostOption.new
  end

  def create
    @post_option = PostOption.new(option_params)
    @post = Post.find(params[:post_id])
    @post_option.post = @post
    if @post_option.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post_option = PostOption.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @post_option.update(option_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post_option.destroy
  end

  private

  def option_params
    params.require(:post_option).permit(:type, :image, :content)
  end
end
