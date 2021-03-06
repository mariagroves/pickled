class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
    @posts = @posts.joins(:post_categories).where(post_categories: { category_id: params[:category]}) if params[:category]
    # filtering by votes and category simultaneously
    @posts = if params[:by_votes]
               @posts.sort_by(&:vote_count).reverse
             else
               @posts.order(created_at: :desc)
             end
    # SELECT * FROM orders GROUP BY date(created_at) HAVING created_at > '2009-01-15'
    # Order.all(:group => "date(created_at)", :having => ["created_at > ?", 1.month.ago])

    @categories = Category.all
  end

  def show
    @post_vote = PostVote.new
    @post_option = PostOption.new
  end

  def new
    @post = Post.new
    @post.post_options.build
    @post.post_options.build
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      # category_ids = params[:post][:category_ids]
      # category_ids.each do |category_id|
      #   PostCategory.create(post: @post, category_id: category_id)
      # end
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
  end

  def update
    # category_ids = Category.where id: post_params[:category_ids]
    # category_ids.each do |category_id|
    #   PostCategory.create(post: @post, category_id: category_id)
    # end
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
      post_options_attributes: [:id, :image, :content], category_ids: [])
  end
end
