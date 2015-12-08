class ApplicationController < ActionController::Base
  helper_method :current_order
  helper_method :current_or_guest_user
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_or_guest_user
    User.last
  end
end
