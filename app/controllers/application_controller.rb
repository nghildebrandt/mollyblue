class ApplicationController < ActionController::Base
 before_action :identify_user, :current_user

  def identify_user
    unless current_user.present?
      @user = User.create
      session[:user_id] = @user.id
    end
  end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
end
