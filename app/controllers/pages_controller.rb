class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :fake_log_in]
  before_action :set_last_visited_at, only: :dashboard, if: proc { user_signed_in? }

  def dashboard
    @user = User.all
    @posts = Post.all.order(created_at: :desc)
  end

  def home
  end

  def fake_log_in
    user = User.create(email: "fakeuser#{User.last.id + 1}@fakeemail.com", username: "Pickle#{User.last.id + 1}", password: "123456", image: "https://i.imgur.com/7B5ATLJ.jpg", bio: "Anonymous user")
    sign_in(user)
    redirect_to posts_path
  end

 private

  def set_last_visited_at
    current_user.update_attribute(:last_visited, Time.current)
  end
end
