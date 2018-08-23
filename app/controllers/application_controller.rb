class ApplicationController < ActionController::Base
  before_action :identify_user

  def identify_user
    @user = cookies[:user_id] ||= SecureRandom.hex(10)
  end
end
