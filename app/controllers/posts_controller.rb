class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
    @category = Category.new
    @post_category = PostCategory.new
  end

  def show
    @post_vote = PostVote.new
    @post_option = PostOption.new
  end

  def new
    @post = Post.new
    @post.post_options.build
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      categoy_ids = params[:post][:category_ids]
      categoy_ids.each do |category_id|
        PostCategory.create(post: @post, category_id: category_id)
      end
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :kind,
      post_options_attributes: [:id, :image, :content])
  end
end
