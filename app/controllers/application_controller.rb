class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # def is_admin
  #   if current_user.admin == true
  #   end
  # end

  # helper_method :admin?

  def admin?
    if current_user
      current_user.admin
    end
  end




end
