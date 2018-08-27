class ApplicationController < ActionController::Base
  before_action :identify_user

  def identify_user
    @user = User.create
  end
end
