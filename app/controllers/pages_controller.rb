class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def dashboard
    @user = User.all
    @posts = Post.all.order(created_at: :desc)
  end

  def home
  end
end
