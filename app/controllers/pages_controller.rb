class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :set_last_visited_at, only: :dashboard, if: proc { user_signed_in? }

  def dashboard
    @user = User.all
    @posts = Post.all.order(created_at: :desc)
  end

  def home
  end

 private

  def set_last_visited_at
    current_user.update_attribute(:last_visited, Time.current)
  end
end
