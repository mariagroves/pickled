class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :count_notifications, if: :user_signed_in?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :bio, :image])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :bio, :image])
  end

  def count_notifications
    # sum = 0
    # current_user.posts.each do |post|
    #   vote = post.post_votes.where('post_votes.created_at BETWEEN ? AND ?', current_user.last_visited, Time.now).count
    #   sum += vote
    # end
    @notifications_count = current_user.current_notifications_count
  end
end
