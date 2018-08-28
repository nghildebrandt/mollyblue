module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = get_user
    end

    private

    def get_user
      cookies[:user_id] || reject_unauthorized_connection
    end
  end
end
