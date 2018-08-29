class ApplicationController < ActionController::Base
 before_action :identify_user

  def identify_user
    @user = User.find(cookies.encrypted[:user_id])
  rescue ActiveRecord::RecordNotFound
    @user = User.create
    cookies.encrypted[:user_id]= @user.id
  end
end
