class Api::V1::UsersController < Api::V1::BaseController
  def notifications_count
    current_user = User.find(params[:user_id])
    notifications_count = current_user.current_notifications_count
    render json: { notifications_count: notifications_count }, status: 200
  end
end
